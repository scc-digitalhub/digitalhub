{{- define "v3io-configs.auth-only.secret" -}}
{{- if .Values.v3io.username }}
username: {{ .Values.v3io.username | b64enc | quote }}
{{- end  }}
{{- if .Values.v3io.tenant }}
tenant: {{ .Values.v3io.tenant | b64enc | quote }}
{{- end  }}
{{- if .Values.v3io.password }}
password: {{ .Values.v3io.password | b64enc | quote }}
{{- end  }}
{{- if .Values.v3io.accessKey }}
accessKey: {{ .Values.v3io.accessKey | b64enc | quote }}
{{- end  }}
{{- end -}}

{{- define "v3io-configs.auth.secret" -}}
{{- include "v3io-configs.java.secret" . }}
{{- include "v3io-configs.auth-only.secret" . }}
{{- end -}}

{{- define "v3io-configs.auth.env" -}}
{{- if .Values.v3io.username }}
- name: V3IO_USERNAME
  valueFrom:
    secretKeyRef:
      name: {{ .Release.Name }}-v3io-auth
      key: username
{{- end }}
{{- if .Values.v3io.password }}
- name: V3IO_PASSWORD
  valueFrom:
    secretKeyRef:
      name: {{ .Release.Name }}-v3io-auth
      key: password
{{- end }}
{{- if .Values.v3io.tenant }}
- name: V3IO_TENANT
  valueFrom:
    secretKeyRef:
      name: {{ .Release.Name }}-v3io-auth
      key: tenant
{{- end }}
{{- if .Values.v3io.accessKey }}
- name: V3IO_ACCESS_KEY
  valueFrom:
    secretKeyRef:
      name: {{ .Release.Name }}-v3io-auth
      key: accessKey
{{- end }}
{{- end -}}

{{- define "v3io-configs.deployment.env" -}}
{{- include "v3io-configs.java.env" . }}
{{- include "v3io-configs.auth.env" . }}
{{- end -}}

{{- define "v3io-configs.deployment-with-home.env" -}}
{{- include "v3io-configs.deployment.env" . }}
- name: HOME
  value: {{ default "/User" .Values.global.v3io.homeMount }}
- name: V3IO_HOME
  value: {{ default "users" .Values.global.v3io.homeContainer }}{{ default "" .Values.global.v3io.homePrefix }}/{{ .Values.v3io.username }}
- name: V3IO_HOME_URL
  value: v3io://{{ default "users" .Values.global.v3io.homeContainer }}{{ default "" .Values.global.v3io.homePrefix }}/{{ .Values.v3io.username }}
{{- end -}}