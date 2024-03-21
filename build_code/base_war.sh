source ../env.sh
cd $UK_SOURCE_PATH/uk.base
echo '/uk.base >> ./gradlew clean'
./gradlew clean
echo '/uk.base >> ./gradlew build -x test'
./gradlew build -x test
echo '/uk.base >> ./gradlew tsc'
./gradlew tsc