{{- define "service-common.service" -}}
apiVersion: v1
kind: Service
metadata:
  name: {{ .Values.service.name }}
spec:
  type: {{ .Values.service.type | default "ClusterIP" }}
  ports:
    - name: http
      port: {{ .Values.service.httpPort }}
      targetPort: http
    - name: https
      port: {{ .Values.service.httpsPort }}
      targetPort: https
  selector:
    app: {{ .Values.myapp.name }}
{{- end }}
