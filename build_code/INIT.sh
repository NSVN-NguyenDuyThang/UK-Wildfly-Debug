source ../env.sh
cd $UK_SOURCE_PATH/uk.base
echo '/uk.base >> ./gradlew clean'
./gradlew clean
echo '/uk.base >> ./gradlew build -x test'
./gradlew build -x test
echo '/uk.base >> ./gradlew tsc'
./gradlew tsc

cd $UK_SOURCE_PATH/uk.com
echo '/uk.com >> ./gradlew clean'
./gradlew clean
echo '/uk.com >> ./gradlew initd --no-daemon'
./gradlew initd --no-daemon

cd $UK_SOURCE_PATH/uk.at
echo '/uk.at >> ./gradlew clean'
./gradlew clean
echo '/uk.at >> ./gradlew initd --no-daemon'
./gradlew initd --no-daemon

cd $UK_SOURCE_PATH/uk.com
echo '/uk.com >> ./gradlew build -x test'
./gradlew build -x test
echo '/uk.com >> ./gradlew upver'
./gradlew upver
echo '/uk.com >> ./gradlew tsc'
./gradlew tsc

cd $UK_SOURCE_PATH/uk.at
echo '/uk.at >> ./gradlew build -x test'
./gradlew build -x test
echo '/uk.at >> ./gradlew upver'
./gradlew upver
echo '/uk.at >> ./gradlew tsc'
./gradlew tsc