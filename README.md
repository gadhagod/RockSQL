# RockSQL
An SQL shell for executing Rockset queries.

## Installation

    pip3 install RockSQL

## Usage
1. Authentication:
```shell
$ export `ROCKSET_TOKEN`=[API key] `ROCKSET_SERVER`=[API server]```
```
**Note**: You can also authorize using `rsql [API key] [API server]` in the next step.

2. Enter the shell:
```shell
$ rsql
```

3. Execute a query

```shell
$ SELECT * FROM my_collection
```

4. Exit

```shell
$ exit
```

#### Shell commands
* `help`
* `cls`/`clear`
* `exit` (^D)

#### Save results
To save query results to a file, append `>` to the end of your query.

    $ SELECT * FROM my_collection > collection.json