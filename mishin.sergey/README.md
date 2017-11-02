# Run tests for a (one particular) python app

## Quick start

To run composed:

``` bash
cd pystorage-composed
docker-compose up
```

## Internals

* Mongo uses "admin":"admin" as a root user for "admin" database
* pystorage & mongo live inside a user-defined network (by default it
  is `pystoragecompose_default`)
  
