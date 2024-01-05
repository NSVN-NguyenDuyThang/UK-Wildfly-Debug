source env.sh
DIR=$(pwd)
cd $UK_SOURCE_PATH/uk.com
echo '/uk.com >> ./gradlew upver'
./gradlew upver
echo '/uk.com >> ./gradlew tsc'
./gradlew tsc
echo '/uk.com >> ./gradlew build -x test'
./gradlew build -x test
cd $DIR
source build_image_and_run_container.sh
echo Done!
sleep 5