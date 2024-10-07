CREATE USER '{{ .Values.db.username }}'@'%' IDENTIFIED BY '{{ .Values.db.password }}';
CREATE DATABASE {{ .Values.db.mlmdDb }};
GRANT ALL ON {{ .Values.db.mlmdDb }}.* TO '{{ .Values.db.username }}'@'%';
CREATE DATABASE {{ .Values.db.pipelineDb }};
GRANT ALL ON {{ .Values.db.pipelineDb }}.* TO '{{ .Values.db.username }}'@'%';
