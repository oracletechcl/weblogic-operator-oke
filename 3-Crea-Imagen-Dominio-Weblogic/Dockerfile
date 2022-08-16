#FROM  container-registry.oracle.com/middleware/weblogic:12.2.1.4
#FROM  container-registry.oracle.com/middleware/weblogic:12.2.1.4-slim-210405
FROM  container-registry.oracle.com/middleware/weblogic:14.1.1.0-slim-8
MAINTAINER martin.gutierrez@oracle.com

# Instala Weblogic Deployment Tool
RUN curl -Lo weblogic-deploy.tar.gz https://github.com/oracle/weblogic-deploy-tooling/releases/download/release-2.3.2/weblogic-deploy.tar.gz
RUN tar xvf weblogic-deploy.tar.gz


# Copia definición de dominio y aplicación
COPY --chown=oracle:root weblogic/* /u01/oracle/


# Crea Dominio
RUN mkdir -p /u01/oracle/user_projects/domains
RUN weblogic-deploy/bin/createDomain.sh -oracle_home /u01/oracle -domain_type WLS -domain_parent /u01/oracle/user_projects/domains -model_file dominio.yaml
