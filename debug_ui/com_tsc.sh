source ../env.sh
cd $UK_SOURCE_PATH/uk.com
echo '/uk.com >> ./gradlew tsc'
./gradlew tsc
echo 'Reflecting resource on Wildfly server .....'
docker cp $UK_SOURCE_PATH/uk.com/com.web/nts.uk.com.web/src/main/webapp/view wildfly-uk-debug_$TAG:/opt/jboss/wildfly/standalone/deployments/nts.uk.com.web.war/
echo Done!
sleep 5