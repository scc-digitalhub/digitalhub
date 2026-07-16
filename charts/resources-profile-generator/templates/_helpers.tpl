{{/*
Expand the chart name.
*/}}
{{- define "resources-profile.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "resources-profile.fullname" -}}
{{- if .Values.configmapName }}
{{- .Values.configmapName | trunc 63 | trimSuffix "-" }}
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
Common labels.
*/}}
{{- define "resources-profile.labels" -}}
app.kubernetes.io/name: {{ include "resources-profile.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end }}

{{/*
Ceiling integer division.
*/}}
{{- define "resources-profile.ceilDiv" -}}
{{- $num := int (index . "num") -}}
{{- $den := int (index . "den") -}}
{{- if le $den 0 -}}
0
{{- else -}}
{{- div (add $num (sub $den 1)) $den -}}
{{- end -}}
{{- end }}

{{/*
Convert memory to Mi integer from string like 119038Mi.
*/}}
{{- define "resources-profile.memoryMi" -}}
{{- $raw := toString . -}}
{{- if hasSuffix "Mi" $raw -}}
{{- trimSuffix "Mi" $raw | int -}}
{{- else -}}
{{- $raw | int -}}
{{- end -}}
{{- end }}
