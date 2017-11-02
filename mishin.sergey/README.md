# Run tests for a (one particular) python app

## Quick start

To run composed:

``` bash
cd pystorage-composed
docker-compose up
```

Expected output:

``` 
Creating pystoragecomposed_pystorage_1 ...
Creating pystoragecomposed_pystorage_1 ... done
Creating pystoragecomposed_mongo_1 ...
Creating pystoragecomposed_mongo_1 ... done
Attaching to pystoragecomposed_pystorage_1, pystoragecomposed_mongo_1
mongo_1      | WARNING: no logs are available with the 'none' log driver
pystorage_1  | test_drop_user (test.TestDropUser) ... ok
pystorage_1  | test_create_new_client (test.TestNewClient) ... ok
pystorage_1  | test_create_dirs (test.TestOperationsOnEmpty) ... ok
pystorage_1  | test_upload_file (test.TestOperationsOnEmpty) ... ok
pystorage_1  | test_download_file (test.TestOperationsOverFiles) ... ok
pystorage_1  | test_list_multiple_files (test.TestOperationsOverFiles) ... ok
pystorage_1  | test_list_single_dir (test.TestOperationsOverFiles) ... ok
pystorage_1  | test_move_dir (test.TestOperationsOverFiles) ... ok
pystorage_1  | test_remove_dir (test.TestOperationsOverFiles) ... ok
pystorage_1  | test_remove_dir_recursively (test.TestOperationsOverFiles) ... ok
pystorage_1  | test_connect_with_config (test.TestStorageClientConstruct) ... ok
pystorage_1  | test_connect_wo_config (test.TestStorageClientConstruct) ... ok
pystorage_1  | test_switch_user (test.TestSwitchUser) ... ok
pystorage_1  | test_switch_user_error (test.TestSwitchUser) ... ok
pystorage_1  |
pystorage_1  | ----------------------------------------------------------------------
pystorage_1  | Ran 14 tests in 8.417s
pystorage_1  |
pystorage_1  | OK
pystorage_1  | MongoDB shell version v3.4.10
pystorage_1  | connecting to: mongodb://mongo:27017/
pystorage_1  | MongoDB server version: 3.4.10
pystorage_1  | server should be down...
pystorage_1  | Mongo should be closed.
pystoragecomposed_mongo_1 exited with code 0
pystoragecomposed_pystorage_1 exited with code 0
```

## Internals

* Mongo uses "admin":"admin" as a root user for "admin" database
* pystorage & mongo live inside a user-defined network (by default it
  is `pystoragecomposed_default`)

## License ##

### PyStorage ###

There is *no license* for pystorage, see [explanation](https://choosealicense.com/no-license/) for details.

In a short hand, you can't use pystorage code without my direct permission.

Usage allowed within [this particular composed environment](mishin.sergey/pystorage-composed).

### Docker images and composed env ###

MIT or Apache 2.0 at your choice.

## Author

Sergey Mishin, sergei.a.mishin@gmail.com
