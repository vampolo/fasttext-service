# FastText as a service [![Build Status](https://travis-ci.org/vampolo/fasttext-service.svg?branch=master)](https://travis-ci.org/vampolo/fasttext-service)

# Why this project ?

FastText is a popular model family used in datascience. To be meaningful, it requires a model of millions of words. Loading those models in a normal laptop can take a hit on ram usage.
Why not providing a fastText implementation trained on the [training data provided by Facebook](https://github.com/facebookresearch/fastText/blob/master/pretrained-vectors.md) dataset as a service ?

# Run it

```
docker pull vampolo/fasttext-service
docker run -P vampolo/fasttext-service


## Docker Compose

Since building this project takes quite a bit of time and resources, you can leverage `docker-compose` to dowload published image

```
docker-compose pull
docker-compose up
```

