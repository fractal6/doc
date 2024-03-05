
[TOC]


## **Backup your data**

Adjust **your endpoint** (host and port), and **the destination** where the backup should be created, in the following command:

```
curl --request POST \
    --url http://localhost:8080/admin \
    --header 'content-type: application/json' \
    --data '{"query":"mutation {\n  export(input: {format: \"rdf\"\n destination: \"/home/admin/src/db/exports/\"\n}) {\n response {\n message\n code\n }\n }\n}"}'
```

## **Import data from a backup**


> Assuming you are in the repo containing the dgraph binary (`fractal6/` usually)

Adjust **your endpoint** (host and port), and **the destination** (`exports/ here`) where the backup lives in the following command:

    ./dgraph live -f exports/*.rdf.* -s exports/*.schema.* -C -a 127.0.0.1:9080 -z 127.0.0.1:5080

## **Port 8080 (or other) is already taken ?**

> Note: If you change the port of an already running instance, backup your data and reimport to avoid some network issues.

In order to change the default port using by [Dgraph](https://dgraph.io/docs/deploy/security/ports-usage/) (9080, 8080, 7080, 5080), you need to follow this procedure : 

- Change the `port_offset` in **both** config files `config-zero.yml` and `config-alpha.yml` (it will increment the value of the port with the value who choose).
- The `port_offset` value should be the same for both file (otherwise Dgraph will complain because of unreachable nodes).
- Increment the port value of `my` and `zero` (in both Dgraph's configuration file) as well as `port_graphql` and `port_grpc` in the [backend](https://github.com/fractal6/fractal6.go) configuration file `config.toml`, accordingly to the offset you have chosen.

Note: Eventually remove or change the path for the data (`_data`) if you change the port while you already have used or launched Dgraph.


## **Webpack error 'SyntaxError: Unexpected token ;' ?**

Update node to version v14.15 or newer (required by [webpack-cli](https://webpack.js.org/api/cli/)).

