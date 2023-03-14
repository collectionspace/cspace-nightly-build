# CollectionSpace nightly build

[![CollectionSpace nightly build](https://github.com/collectionspace/cspace-nightly-build/actions/workflows/nightly.yml/badge.svg)](https://github.com/collectionspace/cspace-nightly-build/actions/workflows/nightly.yml)

Builds CollectionSpace and runs the tests using [Github Actions](#) every night.

## Local testing

Requirements:

- [Docker](#)
- [Docker Compose](#)
- [Ruby](#)

Simply use the scripts:

```bash
./build_and_run_tests.sh # build collectionspace and run the tests

# dl geckodriver && firefox (or reconfigure for chrome && chromedriver if preferred)
./qa_automation.sh # TODO: run the browser ui tests
```
