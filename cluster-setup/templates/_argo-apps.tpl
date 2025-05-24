{{- define "cluster-setup.argoApisixApplication" }}
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: apisix-ingress
  namespace: argocd
spec:
  destination:
    namespace: ingress-apisix
    server: https://kubernetes.default.svc
  project: default
  source:
    repoURL: https://charts.apiseven.com
    chart: apisix
    targetRevision: 2.10.0
    helm:
      values: |
{{ toYaml .Values.apisix.applicationValues | nindent 8 }}
  syncPolicy:
    automated:
      selfHeal: true
      prune: true
    syncOptions:
      - CreateNamespace=true
{{- end }}
