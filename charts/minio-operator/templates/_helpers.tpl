{{/*
Expand the name of the chart.
*/}}
{{- define "minio-operator.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "minio-operator.fullname" -}}
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
{{- define "minio-operator.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "minio-operator.labels" -}}
helm.sh/chart: {{ include "minio-operator.chart" . }}
{{ include "minio-operator.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/created-by: {{ include "minio-operator.chart" . }}
app.kubernetes.io/part-of: {{ include "minio-operator.fullname" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "minio-operator.selectorLabels" -}}
app.kubernetes.io/name: {{ include "minio-operator.name" . }}
app.kubernetes.io/instance: {{ include "minio-operator.fullname" . }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "minio-operator.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "minio-operator.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Namespace function
*/}}
{{- define "minio-operator.namespaceCheck" -}}
{{- if .Values.namespaceValues.namespaced }}
{{- if .Values.namespaceValues.namespace }}
{{- .Values.namespaceValues.namespace }}
{{- else }}
{{- .Release.Namespace}}
{{- end }}
{{- end }}
{{- end }}
