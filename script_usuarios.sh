#!/bin/bash

echo "Iniciando o script..."

echo "Criando pastas"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# carlos, maria e joão: adm
# debora, sebastiana e roberto: vendas
# josefina, amanda e rogerio: secretariado 

echo "Criando usuarios"

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -1 123)  -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -1 123)  -G GRP_ADM
useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd -1 123)  -G GRP_ADM

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -1 123)  -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -1 123)  -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -1 123)  -G GRP_VEN

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -1 123)  -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -1 123)  -G GRP_SEC
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -1 123)  -G GRP_SEC

echo "Atribuindo permissoes"

chmod 777 /publico

chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec

echo "Encerrando..."