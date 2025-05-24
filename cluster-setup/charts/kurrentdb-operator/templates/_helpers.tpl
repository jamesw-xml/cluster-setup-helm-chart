{{- define "operator.image.qualifiedName" -}}
{{- if and .Values.operator.imageRepository (ne .Values.operator.imageRepository.url "") }}
{{- printf "%s/%s" .Values.operator.imageRepository.url .Values.operator.image.name -}}
{{- else -}}
{{- .Values.operator.image.name -}}
{{- end -}}
{{- end -}}
