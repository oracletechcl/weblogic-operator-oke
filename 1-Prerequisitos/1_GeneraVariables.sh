#!/bin/bash
# si ya se posee token, se pasa de parámetro
t=$1
# Recupera USERID
if [ $(echo $OCI_CS_USER_OCID | grep ocid1.saml2idp | wc -l) -eq 1 ]; then
   n1=$( echo $OCI_CS_USER_OCID | awk -F/ '{print $1}')
   n2=$( echo $OCI_CS_USER_OCID | awk -F/ '{print $2}')
   oci iam identity-provider  list --protocol SAML2 --compartment-id $OCI_TENANCY  > $HOME/idp.json 
   n3=$( cat $HOME/idp.json | jq -r '.data[] | select ( .id == "'$n1'") | .name | ascii_downcase ')
   oci iam user list > $HOME/usuarios.json
   export USERID=$(cat $HOME/usuarios.json | jq -r '.data[] | select ( .name == "'$n3/$n2'" ) | .id')
else
   export USERID=$OCI_CS_USER_OCID
fi

# Genera token
if [ a$t == a ]; then
   oci iam auth-token create --description "oke-workshop" --user-id $USERID | tee $HOME/token.json
fi

export TOKENCLA=$(cat $HOME/token.json | jq '.data.token') 
export REGION=$(oci iam region-subscription list | jq -r '.data[] | select( ."region-name"  == "'$OCI_REGION'") | ."region-key" | ascii_downcase ') 
export REPODOM=$(oci os ns get | jq -r '.data')
export REPO=$REGION.ocir.io
export USU=$(oci iam user get --user-id $USERID | jq -r '.data.name' )
export REPOIMG=$REPO/$REPODOM/workshop/weblogic1:01
##############################
echo "## Variables ##" > $HOME/env.sh
echo export WLTOKENCLA=$TOKENCLA >> $HOME/env.sh
echo export WLREGION=$REGION >> $HOME/env.sh
echo export WLREPODOM=$REPODOM >> $HOME/env.sh
echo export WLREPO=$REPO >> $HOME/env.sh
echo export WLUSU=$USU >> $HOME/env.sh
echo export WLREPOIMG=$REPOIMG >> $HOME/env.sh
##############################
echo '. $HOME/env.sh' >> $HOME/.bash_profile
