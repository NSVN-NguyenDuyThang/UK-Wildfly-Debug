source env.sh
DIR=$(pwd)
cd $UK_SOURCE_PATH/uk.at
echo '/uk.at >> ./gradlew upver'
./gradlew upver
echo '/uk.at >> ./gradlew tsc'
./gradlew tsc
echo '/uk.at >> ./gradlew build -x test'
./gradlew build -x test
cd $DIR
source build_image_and_run_container.sh
echo Done!
sleep 5