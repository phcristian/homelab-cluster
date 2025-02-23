# First Thing

Create a secret for issuing certificates from cloudflare:
```shell
apiVersion: v1
kind: Secret
metadata:
  name: cloudflare-api-token-secret
  namespace: cert-manager
type: Opaque
stringData:
  api-token: <api token from cloudflare>

```
Then run the command:
```shell
kubectl apply -k kustomize
```
