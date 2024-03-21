PDW=$(pwd)

source ../env.sh
echo 'BUILD CODE'
source ../build_code/at_02_upver.sh
cd $PDW
source ../build_code/at_03_explodedWar.sh
echo 'COPY PACKAGE RESOURCES'
cd $PDW
rm -rf ../build/deployments/nts.uk.at.web.war
cp -r $UK_SOURCE_PATH/uk.at/at.web/nts.uk.at.web/build/libs/exploded/nts.uk.at.web.war ../build/deployments/nts.uk.at.web.war

cd ..
source build_image.sh
echo Done!
sleep 5