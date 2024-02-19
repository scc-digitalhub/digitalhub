{{- define "v3io-configs.java.crashPath" -}}
{{ default "/igz/java/crash" .Values.global.v3io.crashPath }}/{{ default ".crash" .Values.global.v3io.crashFileName }}
{{- end -}}

{{- define "v3io-configs.java.v3io.conf" -}}
v3io.client {
    socket.host=CURRENT_NODE_IP
    session.use-system-user=false
    on-failure.state.path={{ include "v3io-configs.java.crashPath" . }}
}
v3io.config.auth.file={{ default "/igz/java/auth" .Values.global.v3io.authPath }}/{{ default ".java" .Values.global.v3io.authFileName }}
new-daemon=true
{{- end -}}

{{- define "v3io-configs.java.configMap" -}}
{{ default "v3io.conf" .Values.global.v3io.configFileName }}: |
{{ include "v3io-configs.java.v3io.conf" . | indent 2}}
{{- end -}}

{{- define "v3io-configs.java.v3io.secret.conf" -}}
v3io {
  client {
    session {
{{- if .Values.v3io.username }}
      user = {{ .Values.v3io.username | quote }}
{{- end }}
{{- if .Values.v3io.tenant }}
      tenant = {{ .Values.v3io.tenant | quote }}
{{- end }}
{{- if .Values.v3io.password }}
      password = {{ .Values.v3io.password | b64enc | quote }}
{{- end }}
{{- if .Values.v3io.accessKey }}
      access-key = {{ .Values.v3io.accessKey | quote }}
{{- end }}
    }
  }
}
{{- end -}}

{{- define "v3io-configs.java.secret" -}}
{{ default ".java" .Values.global.v3io.authFileName }}: {{ include "v3io-configs.java.v3io.secret.conf" . | b64enc | quote }}
{{- end -}}

{{- define "v3io-configs.configPath" -}}
{{ default "/igz/java/conf" .Values.global.v3io.configPath }}/{{ default "v3io.conf" .Values.global.v3io.configFileName }}
{{- end -}}

{{- define "v3io-configs.java.env" -}}
- name: IGZ_DATA_CONFIG_FILE
  value: {{ include "v3io-configs.configPath" . }}
- name: CURRENT_NODE_IP
  valueFrom:
    fieldRef:
      fieldPath: status.hostIP
{{- end -}}
