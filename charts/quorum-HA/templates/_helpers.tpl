{{/*
Common labels
*/}}
{{- define "common.labels" -}}
app.kubernetes.io/name: {{ .Release.Name }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Nodemanager selector labels
*/}}
{{- define "nodemanager.selectorLabels" -}}
explorer: {{ .Release.Name }}-explorer
{{- end -}}

{{/*
Node selector labels
*/}}
{{- define "node.selectorLabels" -}}
name: {{ .Release.Name }}
app: {{ .Release.Name }}-quorum-crux
{{- end -}}

{{/*
Node replica-1 selector labels
*/}}
{{- define "node.replica1.selectorLabels" -}}
name: {{ .Release.Name }}-replica-1
app: {{ .Release.Name }}-quorum-crux
{{- end -}}

{{/*
Node replica-2 selector labels
*/}}
{{- define "node.replica2.selectorLabels" -}}
name: {{ .Release.Name }}-replica-2
app: {{ .Release.Name }}-quorum-crux
{{- end -}}

