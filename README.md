# [RockSQL](https://rubygems.org/gems/RockSQL) &middot; [![](https://img.shields.io/gem/v/RockSQL?label=version)](https://rubygems.org/gems/RockSQL/versions) [![](https://img.shields.io/gem/dt/RockSQL?color=dgreen) ![](https://img.shields.io/badge/license-MIT-purple)](https://github.com/gadhagod/RockSQL/blob/master/LICENSE)

A fully operational SQL shell for performing queries on your Rockset collections.

    $ select * from MyCol
    $ where name='Aarav Borthakur';
    [
        {
            "_id": "90",
            "name": "Aarav Borthakur",
            "occupation": "student"
            "_event_time": "2020-12-12T19:41:17.251000Z"
        }
    ]

## Setup
You need to have Ruby installed on your machine to enable RockSQL. Check to see if Ruby is installed with the following command:

    $ ruby -v

If the command is not found, [install Ruby](https://www.ruby-lang.org/en/documentation/installation/). \

Next, install the [RockSQL gem](https://rubygems.org/gems/RockSQL).

    $ gem install RockSQL    # you may need to use "sudo" or the flag "--user"

Now your all setup to start querying. Enter the shell by running `rsql`. Type `help` in the new enviroment to verify your setup.

    $ rsql
    RockSQL-1.1$ help

    RockSQL: A complete Rockset SQL shell.
    A complete guide: http://gadhagod.github.io/RockSQL.

Type `exit` and return to your bash shell. To authorize access to your collections, run the following command, with "API key here" replaced with your API key retrieved from the console.

    export ROCKSET_TOKEN='{API key here}'

## Querying
In the RockSQL shell, type a test query.

    $ select hours from MyCol

Add to your query in the next line (you can do this in one line too).

    $ where _id='gadhagod'

Anything other than the commands listed below are added to your query with a space. To view your staged query, run `staged`.

    $ staged
    select hours from MyCol where _id='gadhagod'

When a semicolon is at the end of a line, the staged query is executed. All semicolons are stripped from the query.

    $ ;
    [
        {
            "hours": 13
        }
    ]

When a query is executed, your staged query is cleared. Enter the following command to restage your last query:

    $ last restage

You can view your last query and it's result too:

    $ last query
    select name from MyCol where _id='94'
    $ last res
    [
        {
            "hours": 13
        }
    ]

You can save your last query's result or query in a local file.

    $ last save test.json

To reset your staged query, simply type `reset`.

    $ select name from MyCol where _id='94'
    $ reset
    $ staged

    $

Here's a quick [demo](https://www.youtube.com/watch?v=Yw6kvpL97sU) of RockSQL.

## Commands
When any of these commands are run, it's not added to your query.

---------------

#### `help`
View the version of RockSQL you are using.

---------------

#### `staged`
View your staged query.

---------------

#### `reset`
Clear your staged query.

---------------

#### `last query`
View your last query.

---------------

#### `last res`
View your last query's response.

---------------

#### `last save <file name>`
Save your last query's ouput into a file.

---------------

#### `last restage`
Restage your last query.

---------------

#### `clear`
Clear all lines on your terminal.

---------------

#### `exit`
Exit the enviroment.

---------------

#### Bugs and Support
If you come across any malfunctions, please open an issue [here](https://github.com/gadhagod/RockSQL/issues).