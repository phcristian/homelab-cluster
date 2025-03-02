{{- define "media-server.name" -}}
{{- default .Chart.Name | trunc 63 }}
{{- end }}

{{- define "media-server.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version }}
{{- end }}

{{- define "media-server.labels" -}}
helm.sh/chart: {{ include "media-server.chart" . }}
{{ include "media-server.selectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "media-server.selectorLabels" -}}
app.kubernetes.io/name: {{ include "media-server.name" . }}
app.kubernetes.io/instance: {{ include "media-server.name" . }}
{{- end }}

