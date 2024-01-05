source env.sh
DIR=$(pwd)
cd $UK_SOURCE_PATH/uk.at
echo '/uk.at >> ./gradlew upver'
./gradlew upver
echo '/uk.at >> ./gradlew explodedWar'
./gradlew explodedWar
cd $DIR
source build_image_and_run_container.sh
echo Done!
sleep 5