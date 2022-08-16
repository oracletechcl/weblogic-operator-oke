# Prerequiitos

## Acceso Imágenes Weblogic
- Con la cuenta Oracle ingresar a http://container-registry.oracle.com
- Navegar hacia MW -> Weblogic
- Leer y Aceptar Uso de Imágenes Weblogic
- Leer y verificar que: Comercialmente significa que cumple con una de estas condiciones :
   - tiene licencias WL
   - el cluster OKE incluye licencias Weblogic en modo UCM
   - es una prueba de menos de 30 días

## Usuario OCI 
- Acceso a tenancy OCI
   - Alternativamente puede crearse un tenancy de prueba en https://www.oracle.com/cl/cloud/free/
- Usuario OCI con acceso al cloud shell
   - Verificar en Consola OCI --> Icono Cloud Shell (extremo superior derecho)

## Cluster OKE desplegado
- En caso de requerirlo, crearlo
   - Ir a Consola OCI -> Developer Services -> Kubernetes Cluster -> Create -> Quick Create
   - Detalles en https://docs.oracle.com/en-us/iaas/Content/ContEng/Tasks/contengcreatingclusterusingoke.htm

## Configurar Cloud Shell

### Acceso al Cluster OKE
- Ir a Consola OCI -> Developer Services -> Kubernetes Cluster -> <Mi Cluster> -> Acceso
- Copiar comando OCI
- Ir a consola OCI -> Cloud Shell
- Verificar si Cloud Shell debe usar la red Pública o alguna subnet privada en el menú Cloud Shell
- Pegar comando OCI
- Ejemplo 
   - `oci ce cluster create-kubeconfig --cluster-id ocid1.cluster.oc1.phx.aaaaaaaamdyxvze7edmqpokjbjazlkxr7pywfvk67pyciz23wcuuxc6d5j7a --file $HOME/.kube/config --region us-phoenix-1 --token-version 2.0.0  --kube-endpoint PUBLIC_ENDPOINT`
- Verificar acceso
   - `kubectl get nodes`
- Detalles en https://docs.oracle.com/en-us/iaas/Content/ContEng/Tasks/contengdownloadkubeconfigfile.htm

### Clonar Este Repositorio
- Permaneciendo en la Consola Cloud Shell
- Ejecutar
   - `git clone https://github.com/mgutierr22abr/oke-weblogic.git`

## Variables de Ambiente 
El objetivo es tener variables de ambiente para los pasos siguientes, estas pueden ser seteadas manualmente o con la generación automática indicada a continuación.

>
> export WLTOKENCLA="xxxxxxxxxxxxxxxxxxxx"
>
> export WLREGION=xxx
>
> export WLREPODOM=xxxxxxxx
>
> export WLREPO=xxx.xx.xx
>
> export WLUSU=xxxxxxxxxxxxxxxxxxx
>
> export WLREPOIMG=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx/weblogic1:01
>

### Generar Variables de Ambiente 
- Ejecutar, pasando de parámetro, si ya lo tiene, el token, en caso contrario, se genera automáticamente
   - `bash -x oke-weblogic/1-Prerequisitos/1_GeneraVariables.sh **"token"**`
- Habilitar las variables ejecutar \<**punto**\> \<**espacio**\> $HOME/env.sh
   - `. $HOME/env.sh`

### Login al Repositorio Oracle
- Ejecutar
   - `bash -x oke-weblogic/1-Prerequisitos/2_LoginRepoOracle.sh`

### Login al Repositorio Privado OCI
- Ejecutar
   - `oke-weblogic/1-Prerequisitos/3_LoginRepoPrivadoOCI.sh`
