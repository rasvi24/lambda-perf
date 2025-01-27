DIR_NAME="./runtimes/$1"
ARCH=$2

rm ${DIR_NAME}/code_${ARCH}.zip 2> /dev/null

docker build ${DIR_NAME} -t maxday/java-21-graalvm-on-provided-al2
dockerId=$(docker create maxday/java-21-graalvm-on-provided-al2)
docker cp $dockerId:/bootstrap.zip ${DIR_NAME}/code_${ARCH}.zip