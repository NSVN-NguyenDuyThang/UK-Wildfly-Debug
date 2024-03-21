source ../env.sh
cd $UK_SOURCE_PATH/uk.at
echo '/uk.at >> ./gradlew tsc'
./gradlew tsc
echo 'Reflecting resource on Wildfly server .....'
docker cp $UK_SOURCE_PATH/uk.at/at.web/nts.uk.at.web/src/main/webapp/view wildfly-uk-debug_$TAG:/opt/jboss/wildfly/standalone/deployments/nts.uk.at.web.war/
echo Done!
sleep 5