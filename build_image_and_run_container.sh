PDW=$(pwd)
source env.sh
echo 'COPY PACKAGE RESOURCES'

rm -rf ./build/deployments/*.war

cd $PDW
cp $UK_SOURCE_PATH/uk.base/base.web/nts.uk.com.js.web/build/libs/nts.uk.com.js.web.war ./build/deployments/nts.uk.com.js.web.war
cp -r $UK_SOURCE_PATH/uk.com/com.web/nts.uk.com.web/build/libs/exploded/nts.uk.com.web.war ./build/deployments/nts.uk.com.web.war
cp -r $UK_SOURCE_PATH/uk.at/at.web/nts.uk.at.web/build/libs/exploded/nts.uk.at.web.war ./build/deployments/nts.uk.at.web.war

source build_image.sh
cd $PDW
source run_container.sh