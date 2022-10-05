# Crear Imagen Weblogic

Este proceso puede realizarse de diversas formas:
- dominio y app en la imagen
- dominio y app en PVC
- sólo dominio
- Software con imágenes desde repositorio Oracle
- Software con versiones custon
- Ver todos los modos en https://github.com/oracle/docker-images

Para este ejemplo se usará el dominio y la aplicación en la Imagen usando WDT, ver en https://github.com/oracle/weblogic-deploy-tooling

- Verificar variables de ambiente en $HOME/env.sh
- Opcional: Recomendado para trabajo, generar imagen en un compartment particular
- Ejecutar
- `oci artifacts container repository create --display-name $WLREPODOM/workshop/weblogic1 --compartment-id aquiMiID`
- Ejecutar
- `bash -x weblogic-operator-oke/3-Crea-Imagen-Dominio-Weblogic/1generaImagen.sh`
