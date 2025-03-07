{{/*
Expand the name of the chart.
*/}}
{{- define "core.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "core.fullname" -}}
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
{{- define "core.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "core.labels" -}}
helm.sh/chart: {{ include "core.chart" . }}
{{ include "core.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/created-by: {{ include "core.chart" . }}
app.kubernetes.io/part-of: {{ include "core.fullname" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "core-sts.labels" -}}
helm.sh/chart: {{ include "core.chart" . }}
{{ include "core-sts.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/created-by: {{ include "core.chart" . }}
app.kubernetes.io/part-of: {{ include "core.fullname" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "core.selectorLabels" -}}
app.kubernetes.io/name: {{ include "core.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "core-sts.selectorLabels" -}}
app.kubernetes.io/name: {{ include "core.name" . }}-sts
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "core.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "core.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Calculate Core endpoint
*/}}
{{- define "core.endpoint" -}}
{{- $protocol := "http://" -}}
{{- if .Values.ingress.enabled }}
{{- if or .Values.ingress.tls .Values.global.externalTls }}
{{- $protocol = "https://" -}}
{{- end }}
{{- with (index .Values.ingress.hosts 0) }}
{{- $protocol }}{{ .host }}
{{- end }}
{{- else }}
{{- if eq .Values.service.type "NodePort"}}
{{- $protocol }}{{ .Values.global.externalHostAddress }}:{{ .Values.service.httpNodePort }}
{{- else }}
{{- $protocol }}{{ .Values.global.externalHostAddress }}:{{ .Values.service.port }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Build core profile variable
*/}}
{{- define "core.templates" -}}
{{- $templates := list }}
{{- range .Values.templates }}
{{- $templates = append $templates (printf "%s" .path) }}
{{- end }}
{{- join "," $templates }}
{{- end }}
