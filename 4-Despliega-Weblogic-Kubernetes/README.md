# Desplegar Dominio Weblogic

## Prerequisitos
- Verificar variables de ambiente en $HOME/env.sh
- Ejecutar
- `. ./env.sh`

- desplegar dominio usando helm
- `bash -x weblogic-operator-oke/4-Despliega-Weblogic-Kubernetes/1despliegaDominio.sh`

- Esperar por Instrospección
- `kubectl get pods`
- Esperar por Dominio
- `kubectl get pods`
- `kubectl describe domain domain1`
- `kubectl get domains`

## Definición de Ingress y Prueba

- Desplegar Ingress
- `kubectl apply -f weblogic-operator-oke/4-Despliega-Weblogic-Kubernetes/2_Ingress.yaml`
- Esperar por IP pública
- `kubectl get svc`
- Anotar IP pública
- Probar aplicación con `curl ip/domain1/` o bien colocando  https://ip/domain1/ en el browser

## Escalar el cluster
- `kubectl patch domain domain1 --type=merge --patch '{"spec": {"clusters": [ { "clusterName": "cluster-1", "replicas": 2 } ]}}'`
## Otros Ejemplos de operación
- https://github.com/oracle/weblogic-kubernetes-operator/tree/release/3.4/kubernetes/samples/scripts/domain-lifecycle
