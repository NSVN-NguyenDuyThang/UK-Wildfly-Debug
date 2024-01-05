source env.sh
echo 'Copy resources'
rm -rf ./build/deployments/*.war
cp $UK_SOURCE_PATH/uk.base/base.web/nts.uk.com.js.web/build/libs/nts.uk.com.js.web.war ./build/deployments/nts.uk.com.js.web.war
unzip -o $UK_SOURCE_PATH/uk.com/com.web/nts.uk.com.web/build/libs/nts.uk.com.web.war -d ./build/deployments/nts.uk.com.web.war 
unzip -o $UK_SOURCE_PATH/uk.at/at.web/nts.uk.at.web/build/libs/nts.uk.at.web.war  -d ./build/deployments/nts.uk.at.web.war
echo 'Build image'
cd build
docker rmi wildfly-uk:debug -f
docker build -t wildfly-uk:debug .
echo 'Run container with debug mode'
docker rm wildfly-uk-debug -f
docker run -it -d -e DEBUG_MODE=$DEBUG_MODE -e DB_TYPE=$DB_TYPE -e DB_SERVER=$DB_SERVER -e DB_USER=$DB_USER -e DB_PASSWORD=$DB_PASSWORD -e DB_NAME=$DB_NAME -p $UK_PORT:8080 -p $WILDFLY_MANAGEMENT_PORT:9990 -p $REMOTE_DEBUG_SOCKET_PORT:8787 --name=wildfly-uk-debug wildfly-uk:debug 