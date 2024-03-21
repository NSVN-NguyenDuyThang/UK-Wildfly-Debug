PDW=$(pwd)

source ../env.sh
echo 'BUILD CODE'
source ../build_code/com_02_upver.sh
cd $PDW
source ../build_code/com_03_explodedWar.sh
cd $PDW
echo 'COPY PACKAGE RESOURCES'
rm -rf ../build/deployments/nts.uk.com.web.war
cp -r $UK_SOURCE_PATH/uk.com/com.web/nts.uk.com.web/build/libs/exploded/nts.uk.com.web.war ../build/deployments/nts.uk.com.web.war

cd ..
source build_image.sh
echo Done!
sleep 5