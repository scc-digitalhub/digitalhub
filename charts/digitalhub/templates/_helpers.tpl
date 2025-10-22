{{/*
Expand the name of the chart.
*/}}
{{- define "digitalhub.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "digitalhub.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "digitalhub.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "digitalhub.labels" -}}
helm.sh/chart: {{ include "digitalhub.chart" . }}
{{ include "digitalhub.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "digitalhub.selectorLabels" -}}
app.kubernetes.io/name: {{ include "digitalhub.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "digitalhub.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "digitalhub.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create registry auth values
*/}}
{{- define "digitalhub.registryAuth" -}}
{{- if and .Values.global.ociRegistry.username .Values.global.ociRegistry.password }}
{{- printf "%s:%s" .Values.global.ociRegistry.username .Values.global.ociRegistry.password | b64enc }}
{{- end }}
{{- end }}

{{/*
Calculate dashboard oidc configuration endpoint
*/}}
{{- define "digitalhub.oidcDashboardEndpoint" -}}
{{- if .Values.dashboard.ingress.enabled }}
{{- with (index .Values.dashboard.ingress.hosts 0) }}
{{- .host -}}
{{- end }}
{{- else }}
{{- if eq .Values.global.service.type "NodePort"}}
{{ .Values.global.externalHostAddress }}:{{ .Values.dashboard.service.httpNodePort }}
{{- else }}
{{ .Values.global.externalHostAddress }}:{{ .Values.dashboard.service.port }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Calculate coder access url
*/}}
{{- define "digitalhub.coderAccUrl" -}}
{{- $hasAccessURL := false }}
{{- range .Values.coder.coder.env }}
{{- if (eq .name "CODER_ACCESS_URL") }}
{{- $hasAccessURL = true }}
{{- end }}
{{- end }}
{{- if not $hasAccessURL -}}
- name: CODER_ACCESS_URL
  value: "http://coder"
{{ end -}}
{{- end -}}

{{/*
Coder ingress TLS enabled check.
*/}}
{{- define "digitalhub.coderIngressTlsEnabled" -}}
{{- if or .Values.coder.coder.ingress.tls.enable .Values.global.externalTls -}}
true
{{- else -}}
false
{{- end }}
{{- end }}

{{/*
Set packages versions for code-toolbox and tests
*/}}
{{- define "digitalhub.packages" -}}
{{ $command := "" }}
{{- if .Values.platformPackages.preRelease -}}
{{ $command = "pip install --pre" }}
{{- else -}}
{{ $command = "pip install" }}
{{- end -}}
{{- range $package := .Values.platformPackages.packages -}}
{{ $command = printf "%s %s" $command $package.name }}
{{- if $package.tag -}}
{{ $command = printf "%s==%s" $command $package.tag }}
{{- end -}}
{{- end }}
{{- $command = printf "%s" $command }}
{{- $command }}
{{- end }}


{{/*
Variables used in the creation and upgrade of Coder templates
*/}}
{{- define "digitalhub.coderTemplateVariables" -}}
{{- $variables := list }}
{{- $root := index . 0 -}}
{{- $template := index . 1  -}}
{{- if $template.extraVars -}}
{{- $variables = append $variables (printf "extra_vars=true" ) }}
{{- end }}
{{- if $template.extraLabels -}}
{{- $labels := list }}
{{- $labels = (toJson $template.extraLabels | b64enc )}}
{{- $variables = append $variables (printf "extra_labels=\"%s\"" $labels ) }}
{{- end }}
{{- $variables = append $variables (printf "node_port=%s" $template.nodePort ) }}
{{- $variables = append $variables (printf "s3_endpoint=%s:%s" $root.Values.global.s3.endpoint $root.Values.global.s3.endpointPort ) }}
{{- $variables = append $variables (printf "s3_bucket=%s" $root.Values.global.s3.platform.bucket ) }}
{{- $variables = append $variables (printf "namespace=%s" $root.Release.Namespace ) }}
{{- $variables = append $variables (printf "service_type=%s" $root.Values.global.service.type ) }}
{{- $variables = append $variables (printf "node_port=%s" $template.nodePort ) }}
{{- $variables = append $variables (printf "external_url=%s" (default $root.Values.global.externalHostAddress $root.Subcharts.coder.Values.externalHostAddress) ) }}
{{- $variables = append $variables (printf "https=%s" (include "digitalhub.coderIngressTlsEnabled" $root) ) }}
{{- if not (eq $template.name "code-toolbox")}}
  {{- $variables = append $variables (printf "image=%s" $template.image ) }}
{{- end }}
{{- if eq $template.name "dremio"}}
{{- if and $root.Values.global.s3.platform.existingSecret.secretName $root.Values.global.s3.platform.existingSecret.accessKeyKey $root.Values.global.s3.platform.existingSecret.secretKeyKey }}
  {{- $variables = append $variables (printf "s3_platform_user_secret=%s" $root.Values.global.s3.platform.existingSecret.secretName ) }}
  {{- $variables = append $variables (printf "s3_access_key_key=%s" $root.Values.global.s3.platform.existingSecret.accessKeyKey ) }}
  {{- $variables = append $variables (printf "s3_secret_key_key=%s" $root.Values.global.s3.platform.existingSecret.secretKeyKey ) }}
{{- else }}
  {{- $variables = append $variables (printf "s3_platform_user_secret=%s" $root.Values.global.s3.platform.platformUserSecret ) }}
{{- end }}
{{- end }}
{{- if or (eq $template.name "dremio") (eq $template.name "sqlpad")}}
  {{- $variables = append $variables (printf "postgresql_db_name=%s" $template.postgres.database ) }}
  {{- $variables = append $variables (printf "postgresql_hostname=%s" $template.postgres.hostname ) }}
{{- if and $template.postgres.ownerCredsSecret.secretName $template.postgres.ownerCredsSecret.usernameKey }}
  {{- $variables = append $variables (printf "postgresql_creds_secret=%s" $template.postgres.ownerCredsSecret.secretName ) }}
  {{- $variables = append $variables (printf "postgresql_username_key=%s" $template.postgres.ownerCredsSecret.usernameKey ) }}
  {{- $variables = append $variables (printf "postgresql_password_key=%s" $template.postgres.ownerCredsSecret.passwordKey ) }}
{{- end }}
{{- end }}
{{- if eq $template.name "jupyter"}}
  {{- $variables = append $variables (printf "image_3_9=%s" $template.image39 ) }}
  {{- $variables = append $variables (printf "image_3_11=%s" $template.image311 ) }}
{{- end }}
{{- if or (eq $template.name "jupyter") (eq $template.name "code-toolbox")}}
  {{- $variables = append $variables (printf "privileged=%v" $template.privileged ) }}
  {{- $variables = append $variables (printf "stsenabled=%v" $root.Values.core.sts.enabled ) }}
{{- if and $root.Values.core.coreAuthCreds.existingSecret.secretName $root.Values.core.coreAuthCreds.existingSecret.clientIdKey $root.Values.core.coreAuthCreds.existingSecret.clientSecretKey }}
  {{- $variables = append $variables (printf "core_auth_creds_secret=%v" $root.Values.core.coreAuthCreds.existingSecret.secretName ) }}
  {{- $variables = append $variables (printf "client_id_key=%v" $root.Values.core.coreAuthCreds.existingSecret.clientIdKey ) }}
  {{- $variables = append $variables (printf "client_secret_key=%v" $root.Values.core.coreAuthCreds.existingSecret.clientSecretKey ) }}
{{- end }}
    {{- $variables = append $variables (printf "dhcore_endpoint=http://%s-core:%s" $root.Release.Name $root.Values.core.service.port ) }}
    {{- $variables = append $variables (printf "dhcore_issuer=http://%s-core:%s" $root.Release.Name $root.Values.core.service.port ) }}
{{- end }}
{{- join "," $variables -}}
{{- end -}}
