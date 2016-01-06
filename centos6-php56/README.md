# PHP Extension builder

Dockerfile to build PHP extensions.

## Usage

Run ${COMMAND} in the centos6 build environment:

```bash
docker run --rm -it -v $PWD:/build swco/phpeb:centos6 ${COMMAND}
```

## Useful Alias

```bash
alias phpeb6="docker run --rm -it -v $PWD:/build swco/phpeb:centos6"
alias phpeb5="docker run --rm -it -v $PWD:/build swco/phpeb:centos5"
```
