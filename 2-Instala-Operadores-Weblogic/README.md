# Instalar Operadores

El "Oracle Weblogic Operator" usa el mecanismo estándar de Kubernetes para proveer extensiones.
De esta forma, el recurso "domain" queda disponible para realizar operaciones normales, como :

>
> kubectl get domains
>
> kubectl describe domain prueba
>

En este ejemplo además se usará uno de los operadores clásicos de ingress.


## Instalar Weblogic Operator
- Ejecutar
- `bash -x oke-weblogic/2-Instala-Operadores-Weblogic/1instalaWeblogicOperator.sh`

## Instalar Ingress Operator
- Ejecutar
- `bash -x oke-weblogic/2-Instala-Operadores-Weblogic/2instalaNGINXoperator.sh`

## Verificar
- `kubectl get pods`
- `kubectl get svc`



Detalles en https://oracle.github.io/weblogic-kubernetes-operator/quickstart/install/
