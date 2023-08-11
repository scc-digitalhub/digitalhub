{{/*
Expand the name of the chart.
*/}}
{{- define "custom-resource-manager.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "custom-resource-manager.fullname" -}}
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
{{- define "custom-resource-manager.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "custom-resource-manager.labels" -}}
helm.sh/chart: {{ include "custom-resource-manager.chart" . }}
{{ include "custom-resource-manager.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "custom-resource-manager.selectorLabels" -}}
app.kubernetes.io/name: {{ include "custom-resource-manager.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "custom-resource-manager.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "custom-resource-manager.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create TLS enabled.
*/}}
{{- define "custom-resource-manager.tlsEnabled" -}}
{{- if .Values.ingress.tls -}}
true
{{- else -}}
false
{{- end -}}
{{- end }}

{{/*
Create default access URL
*/}}
{{- define "custom-resource-manager.defaultAccessURL" }}
  {{- $proto := "" -}}
  {{- $port := "" -}}
  {{- if eq (include "custom-resource-manager.tlsEnabled" .) "true" -}}
    {{- $proto = "https" -}}
      {{- if eq .Values.service.type "NodePort" -}}
        {{- $port = .Values.service.nodePort -}}
      {{- end -}}
  {{- else -}}
  {{- $proto = "http" -}}
    {{- if eq .Values.service.type "NodePort" -}}
      {{- $port = .Values.service.nodePort -}}
    {{- end -}}
  {{- end -}}
  {{- if .Values.global.externalHostAddress -}}
    {{ printf "%s://%s:%s" $proto .Values.global.externalHostAddress $port }}
  {{- else if .Values.ingress.hosts -}}
    {{ printf "%s://%s" $proto (index .Values.ingress.hosts 0 ).host }}
  {{- else -}}
    {{ $proto }}://{{ include "custom-resource-manager.fullname" . }}.{{ .Release.Namespace }}.svc.cluster.local
  {{- end }}
{{- end }}

{{- define "custom-resource-manager.allowedCrd" -}}
{{- range $i, $apiGroup := .Values.crdAllowed }}
{{- range $j, $res := $apiGroup.resources }}
{{- if ne $i 0 }},{{ end }}
{{- if ne $j 0 }},{{ end }}
{{- printf "%s.%s" $res $apiGroup.apiGroup }}
{{- end }}
{{- end }}
{{- end -}}