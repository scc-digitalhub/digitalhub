{{- define "v3io-configs.fuse.secret" -}}
{{- include "v3io-configs.auth-only.secret" . }}
{{- end -}}