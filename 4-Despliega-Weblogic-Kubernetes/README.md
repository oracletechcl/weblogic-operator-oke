# Desplegar Dominio Weblogic

## Prerequisitos
- Verificar variables de ambiente en $HOME/env.sh
- Crear Secret con password que permite acceder al registry privado
- `bash -x weblogic-operator-oke/4-Despliega-Weblogic-Kubernetes/1_creaSecretParaPullImagen.sh`

- Opcionalmente se crea un PVC para datos compartidos, logs, entre los pod del dominio
- `kubectl apply -f weblogic-operator-oke/4-Despliega-Weblogic-Kubernetes/2_creaVolumeClaimShared.yaml`
- verificar creación esperando estado Pending
- `kubectl get pvc`

- Asignar credenciales Admin de Weblogic
- `kubectl apply -f weblogic-operator-oke/4-Despliega-Weblogic-Kubernetes/3_SecretCredencialesWeblogic.yaml`

## Despliegue Dominio Weblogic

- Editar archivo para reflejar IMAGEN usada
- `sed -i '1,$s#WLREPOIMG'#$WLREPOIMG# weblogic-operator-oke/4-Despliega-Weblogic-Kubernetes/4_dominioWeblogic.yaml `
- Despleger dominio weblogic
- `kubectl apply -f weblogic-operator-oke/4-Despliega-Weblogic-Kubernetes/4_dominioWeblogic.yaml`
- Esperar por Instrospección
- `kubectl get pods`
- Esperar por Dominio
- `kubectl get pods`
- `kubectl describe domain domain1`
- `kubectl get domains`

## Definición de Ingress y Prueba

- Desplegar Ingress
- `kubectl apply -f weblogic-operator-oke/4-Despliega-Weblogic-Kubernetes/5_Ingress.yaml`
- Esperar por IP pública
- `kubectl get svc`
- Anotar IP pública
- Probar aplicación con `curl ip/domain1/` o bien colocando  https://ip/domain1/ en el browser

## Ejemplos de operación
- https://github.com/oracle/weblogic-kubernetes-operator/tree/release/3.4/kubernetes/samples/scripts/domain-lifecycle
