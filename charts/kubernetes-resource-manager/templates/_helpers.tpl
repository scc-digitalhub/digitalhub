{{/*
Expand the name of the chart.
*/}}
{{- define "kubernetes-resource-manager.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "kubernetes-resource-manager.fullname" -}}
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
{{- define "kubernetes-resource-manager.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "kubernetes-resource-manager.labels" -}}
helm.sh/chart: {{ include "kubernetes-resource-manager.chart" . }}
{{ include "kubernetes-resource-manager.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "kubernetes-resource-manager.selectorLabels" -}}
app.kubernetes.io/name: {{ include "kubernetes-resource-manager.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "kubernetes-resource-manager.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "kubernetes-resource-manager.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create TLS enabled.
*/}}
{{- define "kubernetes-resource-manager.tlsEnabled" -}}
{{- if .Values.ingress.enabled }}
{{- if or .Values.ingress.tls .Values.global.externalTls -}}
true
{{- else -}}
false
{{- end -}}
{{- end }}
{{- end }}

{{/*
Create default access URL
*/}}
{{- define "kubernetes-resource-manager.defaultAccessURL" }}
  {{- $proto := "" -}}
  {{- $port := "" -}}
  {{- if eq (include "kubernetes-resource-manager.tlsEnabled" .) "true" -}}
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
    {{ $proto }}://{{ include "kubernetes-resource-manager.fullname" . }}.{{ .Release.Namespace }}.svc.cluster.local
  {{- end }}
{{- end }}

{{- define "kubernetes-resource-manager.allowedCrd" -}}
{{- range $i, $apiGroup := .Values.rbac.roles }}
{{- if $apiGroup.crd }}
{{- range $j, $res := $apiGroup.resources }}
{{- printf "%s.%s," $res $apiGroup.apiGroups -}}
{{- end }}
{{- end }}
{{- end }}
{{- end -}}

{{/*
Namespace function
*/}}
{{- define "kubernetes-resource-manager.namespaceCheck" -}}
{{- if .Values.rbac.namespaced }}
{{- if .Values.namespaceValues.namespace }}
{{- .Values.namespaceValues.namespace }}
{{- else }}
{{- .Release.Namespace }}
{{- end }}
{{- else }}
{{- .Values.namespaceValues.defaultValue }}
{{- end }}
{{- end }}

{{/*
Function for setting roles for KRM
*/}}
{{- define "kubernetes-resource-manager.roles" }}
{{- range $i, $roles := .Values.oidc.access.roles }}
  ACCESS_ROLES_{{ $i }}_ROLE: {{ $roles.role }}
  ACCESS_ROLES_{{ $i }}_RESOURCES: {{ $roles.resources | quote }}
{{- end }}
{{- end }}
