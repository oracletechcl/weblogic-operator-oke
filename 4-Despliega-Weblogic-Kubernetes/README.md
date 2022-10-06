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
- `kubectl describe domain domain01`
- `kubectl get domains`

## Definición de Ingress y Prueba

- Desplegar Ingress
- `bash -x weblogic-operator-oke/4-Despliega-Weblogic-Kubernetes/2creaIngress.sh`
- Esperar por IP pública
- `kubectl get ingress`
- Anotar IP pública
- Probar aplicación con `curl ip/ingress01/` o bien colocando  https://ip/ingress01/ en el browser

## Escalar el cluster
- `kubectl patch domain domain01 --type=merge --patch '{"spec": {"clusters": [ { "clusterName": "cluster-1", "replicas": 2 } ]}}'`
## Otros Ejemplos de operación
- https://github.com/oracle/weblogic-kubernetes-operator/tree/release/3.4/kubernetes/samples/scripts/domain-lifecycle
