{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "mlrun.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "mlrun.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create a fully qualified api name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "mlrun.api.fullname" -}}
{{- if .Values.api.fullnameOverride -}}
{{- .Values.api.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.api.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.api.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}


{{/*
Create a fully qualified api chief name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "mlrun.api.chief.fullname" -}}
{{- if .Values.api.chief.fullnameOverride -}}
{{- .Values.api.chief.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-chief" (include "mlrun.api.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{/*
Create a fully qualified api worker name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "mlrun.api.worker.fullname" -}}
{{- if .Values.api.worker.fullnameOverride -}}
{{- .Values.api.worker.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-worker" (include "mlrun.api.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}


{{/*
Create a fully qualified api opa name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "mlrun.api.opa.fullname" -}}
{{- if .Values.api.opa.fullnameOverride -}}
{{- .Values.api.opa.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s-%s" .Release.Name .Values.api.name .Values.api.opa.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s-%s" .Release.Name $name .Values.api.name .Values.api.opa.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}


{{/*
Create a fully qualified api log-collector name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "mlrun.api.sidecars.logCollector.fullname" -}}
{{- if .Values.api.sidecars.logCollector.fullnameOverride -}}
{{- .Values.api.sidecars.logCollector.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s-%s" .Release.Name .Values.api.name .Values.api.sidecars.logCollector.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s-%s" .Release.Name $name .Values.api.name .Values.api.sidecars.logCollector.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create log-collector internal address.
*/}}
{{- define "mlrun.api.sidecars.logCollector.internalAddress" -}}
127.0.0.1:{{- .Values.api.sidecars.logCollector.listenPort -}}
{{- end -}}


{{/*
Create a fully qualified db name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "mlrun.db.fullname" -}}
{{- if .Values.db.fullnameOverride -}}
{{- .Values.db.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.db.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.db.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create a fully qualified db exporter name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "mlrun.db.exporter.fullname" -}}
{{- if .Values.db.exporter.fullnameOverride -}}
{{- .Values.db.exporter.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.db.exporter.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.db.exporter.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create a fully qualified ui name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "mlrun.ui.fullname" -}}
{{- if .Values.ui.fullnameOverride -}}
{{- .Values.ui.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Values.ui.name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s-%s" .Release.Name $name .Values.ui.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create a fully qualified db configmap name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "mlrun.db.initConfigMapName" -}}
{{- printf "%s-init" (include "mlrun.db.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{/*
This is to couple nuclio and mlrun charts, and comes to workaround the fact that the same
template (nameOverride and others) get different values between the subcharts in mlrun-kit scenario
*/}}
{{- define "mlrun.nuclio.dashboardName" -}}
{{- printf "nuclio-dashboard" -}}
{{- end -}}

{{/*
Auto-resolve to allow dynamic behavior for open-source mlrun-kit
*/}}
{{- define "mlrun.ui.nuclio.apiURL" -}}
{{- if .Values.nuclio.apiURL }}
{{- .Values.nuclio.apiURL -}}
{{- else -}}
{{- printf "http://%s.%s.svc.cluster.local:8070" (include "mlrun.nuclio.dashboardName" .) .Release.Namespace -}}
{{- end -}}
{{- end -}}

{{- define "mlrun.ui.nuclio.uiURL" -}}
{{- if .Values.nuclio.uiURL }}
{{- .Values.nuclio.uiURL -}}
{{- else if and .Values.global.externalHostAddress .Values.global.nuclio.dashboard.nodePort -}}
{{- printf "http://%s:%s" .Values.global.externalHostAddress (.Values.global.nuclio.dashboard.nodePort | toString) -}}
{{- else -}}
{{- printf "http://example-nuclio-ui:8070" -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "mlrun.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "mlrun.common.labels" -}}
helm.sh/chart: {{ include "mlrun.chart" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
DB run user
*/}}
{{- define "mlrun.db.DBRunUser" -}}
{{- if .Values.db.podSecurityContext.runAsUser }}
{{- .Values.db.podSecurityContext.runAsUser -}}
{{- else -}}
{{- print "root" -}}
{{- end -}}
{{- end -}}

{{/*
UI container port -
In 1.0.5 we introduced a backwards incompatible change to run images rootless (including the mlrun-ui image).
This means nginx cannot use port 80 and now uses 8090 instead.
In order to support system tests, we need a special condition to decide which port to use.
The non GA images are created in the following format "<latest-version-released>-commit-id", e.g. - "1.0.4-sa1asd1"
which actually represents newer changes after 1.0.4.
*/}}
{{- define "mlrun.ui.HTTPContainerPort" -}}
{{- if and (semverCompare "!=1.0.4" .Values.ui.image.tag) (semverCompare ">1.0.3-x" .Values.ui.image.tag) -}}
{{- print "8090" -}}
{{- else -}}
{{- print "80" -}}
{{- end -}}
{{- end -}}

{{/*
Common selector labels
*/}}
{{- define "mlrun.common.selectorLabels" -}}
app.kubernetes.io/name: {{ include "mlrun.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
release: {{ .Release.Name }}
{{- end -}}

{{/*
API labels
*/}}
{{- define "mlrun.api.labels" -}}
{{ include "mlrun.common.labels" . }}
{{ include "mlrun.api.selectorLabels" . }}
{{- end -}}

{{/*
API chief labels
*/}}
{{- define "mlrun.api.chief.labels" -}}
{{ include "mlrun.common.labels" . }}
{{ include "mlrun.api.chief.selectorLabels" . }}
{{- end -}}

{{/*
API worker labels
*/}}
{{- define "mlrun.api.worker.labels" -}}
{{ include "mlrun.common.labels" . }}
{{ include "mlrun.api.worker.selectorLabels" . }}
{{- end -}}

{{/*
API selector labels
*/}}
{{- define "mlrun.api.selectorLabels" -}}
{{ include "mlrun.common.selectorLabels" . }}
app.kubernetes.io/component: {{ .Values.api.name | quote }}
{{- end -}}

{{/*
API chief selector labels
*/}}
{{- define "mlrun.api.chief.selectorLabels" -}}
{{ include "mlrun.api.selectorLabels" . }}
app.kubernetes.io/sub-component: "chief"
{{- end -}}

{{/*
API worker selector labels
*/}}
{{- define "mlrun.api.worker.selectorLabels" -}}
{{ include "mlrun.api.selectorLabels" . }}
app.kubernetes.io/sub-component: "worker"
{{- end -}}

{{/*
DB labels
*/}}
{{- define "mlrun.db.labels" -}}
{{ include "mlrun.common.labels" . }}
{{ include "mlrun.db.selectorLabels" . }}
{{- end -}}

{{/*
DB selector labels
*/}}
{{- define "mlrun.db.selectorLabels" -}}
{{ include "mlrun.common.selectorLabels" . }}
app.kubernetes.io/component: {{ .Values.db.name | quote }}
{{- end -}}

{{/*
UI labels
*/}}
{{- define "mlrun.ui.labels" -}}
{{ include "mlrun.common.labels" . }}
{{ include "mlrun.ui.selectorLabels" . }}
{{- end -}}

{{/*
UI selector labels
*/}}
{{- define "mlrun.ui.selectorLabels" -}}
{{ include "mlrun.common.selectorLabels" . }}
app.kubernetes.io/component: {{ .Values.ui.name | quote }}
{{- end -}}

{{/*
Create the name of the service account to use
*/}}
{{- define "mlrun.serviceAccountName.api" -}}
{{- if .Values.serviceAccounts.api.create -}}
    {{ default (include "mlrun.api.fullname" .) .Values.serviceAccounts.api.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccounts.api.name }}
{{- end -}}
{{- end -}}

{{/*
Resolve the effective docker registry url and secret Name allowing for global values
*/}}
{{- define "mlrun.defaultDockerRegistry.url" -}}
{{ coalesce .Values.defaultDockerRegistryURL .Values.global.registry.url }}
{{- end -}}

{{- define "mlrun.defaultDockerRegistry.builderSecretName" -}}
{{ coalesce .Values.defaultDockerRegistrySecretName .Values.global.registry.secretName }}
{{- end -}}

{{- define "mlrun.defaultDockerRegistry.imagePullSecretName" -}}
{{ coalesce .Values.api.function.spec.image_pull_secret.default .Values.global.registry.secretName }}
{{- end -}}

{{/*
Resolve the nuclio api address (for mlrun-kit)
*/}}
{{- define "mlrun.nuclio.apiURL" -}}
{{- if .Values.nuclio.apiURL -}}
{{- printf .Values.nuclio.apiURL -}}
{{- else -}}
{{- printf "http://%s:8070" (include "mlrun.nuclio.dashboardName" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
