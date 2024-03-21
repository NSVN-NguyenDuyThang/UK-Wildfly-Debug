source env.sh
cd build
echo 'RUN CONTAINER - DEBUG MODE'
docker rm wildfly-uk-debug_$TAG -f
docker run -it -d -e DEBUG_MODE=$DEBUG_MODE -e DB_TYPE=$DB_TYPE -e DB_SERVER=$DB_SERVER -e DB_USER=$DB_USER -e DB_PASSWORD=$DB_PASSWORD -e DB_NAME=$DB_NAME -p $UK_PORT:8080 -p $REMOTE_DEBUG_SOCKET_PORT:8787 --name=wildfly-uk-debug_$TAG wildfly-uk-debug:$TAG 