{{/* vim: set filetype=mustache: */}}
{{/*
Create a default fully qualified app name. Overrides .Release.Name w/ .Values.global.name to allow deep naming overrides from parent charts.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "release" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- $release := or .Values.global.name .Release.Name -}}
{{- printf "%s-%s" $release $name | trunc 24 -}}
{{- end -}}

{{/*
Overrides .Release.Namespace w/ .Values.global.namespace to allow deep overrides from parent charts.
*/}}
{{- define "namespace" -}}
{{- $namespace := default .Release.Namespace .Values.global.namespace -}}
{{- printf "%s" $namespace | trunc 24 -}}
{{- end -}}
