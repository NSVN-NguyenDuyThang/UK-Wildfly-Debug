source env.sh
echo 'BUILD IMAGE'
cd build
docker rmi wildfly-uk-debug:$TAG -f
docker build -t wildfly-uk-debug:$TAG .