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
{{- if and .Values.global.registry.username .Values.global.registry.password }}
{{- printf "%s:%s" .Values.global.registry.username .Values.global.registry.password | b64enc }}
{{- end }}
{{- end }}

{{/*
Calculate dashboard oidc configuration endpoint
*/}}
{{- define "digitalhub.oidcDashboardEndpoint" -}}
{{- if .Values.dashboard.ingress.enabled}}
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
Set packages versions for tests
*/}}
{{- define "digitalhub.testPackages" -}}
{{- $command := "pip install --cache-dir home/pipcache" -}}
{{- range $package := .Values.platformTests.packages -}}
{{- $command = printf "%s %s" $command $package.name }}
{{- if $package.tag -}}
{{- $command = printf "%s==%s" $command $package.tag }}
{{- end -}}
{{- end }}
{{- $command = printf "%s %s" $command "requests-oauthlib" }}
{{ $command }}
{{- end }}


