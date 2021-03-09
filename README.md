# CollectionSpace nightly build

Builds CollectionSpace and runs the tests using [Github Actions](#) every night =)

## Updating the docker files

The `docker` directory is copied directly from LYRASIS [cspace-deployment](#):

```bash
# TODO: scriptify
CSD=../cspace-deployment/docker
cp -r $CSD/db/* docker/db/
cp -r $CSD/dev/* docker/dev/
rm docker/dev/buildspec.yml
rm docker/dev/docker-compose-buildspec.yml
rm docker/dev/make-tomcat-cspace-tarball.sh
```

__Do not edit these files manually.__

## Local testing

Requirements:

- [Docker](#)
- [Docker Compose](#)
- [Ruby](#)

Simply use the scripts:

```bash
./build_and_run_tests.sh # build collectionspace and run the tests
./qa_automation.sh # run the browser ui tests
```
