# pacman + apt = pacapt

An Arch's pacman-like package manager for some Unices.

[Slides][slides]

## Alpine Linux

1. `docker build -f Alpine.Dockerfile -t bcbcarl/alpine .`
2. `docker run --rm -it bcbcarl/alpine`
3. `cat /etc/issue`
4. `pacman -Q`
5. `date`

## Ubuntu

1. `docker build -f Ubuntu.Dockerfile -t bcbcarl/ubuntu .`
2. `docker run --rm -it bcbcarl/ubuntu`
3. `cat /etc/issue`
4. `pacman -Q`
5. `date`

[slides]: https://docs.google.com/presentation/d/1-02ZYr8clUv4Pk7X-FbDxztNODp_Ha0e6aOZnFuYaVM/edit?usp=sharing
