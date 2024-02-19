{{/*
Expand the name of the chart.
*/}}
{{- define "dremio-rest-server-operator.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "dremio-rest-server-operator.fullname" -}}
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
{{- define "dremio-rest-server-operator.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "dremio-rest-server-operator.labels" -}}
helm.sh/chart: {{ include "dremio-rest-server-operator.chart" . }}
{{ include "dremio-rest-server-operator.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/created-by: {{ include "dremio-rest-server-operator.chart" . }}
app.kubernetes.io/part-of: {{ include "dremio-rest-server-operator.fullname" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "dremio-rest-server-operator.selectorLabels" -}}
app.kubernetes.io/name: {{ include "dremio-rest-server-operator.name" . }}
app.kubernetes.io/instance: {{ include "dremio-rest-server-operator.fullname" . }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "dremio-rest-server-operator.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "dremio-rest-server-operator.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Namespace function
*/}}
{{- define "dremio-rest-server-operator.namespaceCheck" -}}
{{- if .Values.namespaceValues.namespaced }}
{{- if .Values.namespaceValues.namespace }}
{{- .Values.namespaceValues.namespace }}
{{- else }}
{{- .Release.Namespace}}
{{- end }}
{{- end }}
{{- end }}
