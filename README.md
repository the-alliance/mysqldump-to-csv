# MySQL dump to CSV
## Introduction
This Python script converts MySQL dump files into CSV format. It is optimized to handle extraordinarily large dumps, such as those from Wikipedia.

MySQL dumps contain a series of INSERT statements and can be difficult to import or manipulate, often requiring significant hardware upgrades. This script provides an easy way to convert these dump files into the universal CSV format.

The script takes advantage of the structural similarities between MySQL INSERT statements and CSV files. It uses Python's CSV parser to convert the MySQL syntax into CSV, enabling the data to be read and used more easily.

## Getting Started - Local Setup
1. Run `docker compose up -d` in the root directory to start the python container.
2. Put your sql dump files in the volume directory.
3. Run `docker compose exec mysqldump-python-container bash` to enter the python container.
4. Run `cd volume` to navigate to the volume directory.
5. Follow the usage instructions below to run the script.
6. Once you have what you need, you can remove the sql and csv files from the volume directory.

## Usage
Just run `python mysqldump_to_csv.py` followed by the filename of an SQL file. You can specify multiple SQL files, and they will all be concatenated into one CSV file. This script can also take in SQL files from standard input, which can be useful for turning a gzipped MySQL dump into a CSV file without uncompressing the MySQL dump.

`zcat dumpfile.sql.gz | python mysqldump_to_csv.py`

## How It Works
The following SQL:

    INSERT INTO `page` VALUES (1,0,'April','',1,0,0,0.778582929065,'20140312223924','20140312223929',4657771,20236,0),
    (2,0,'August','',0,0,0,0.123830928525,'20140312221818','20140312221822',4360163,11466,0);

is turned into the following CSV:

    1,0,April,1,0,0,0.778582929065,20140312223924,20140312223929,4657771,20236,0
    2,0,August,0,0,0,0.123830928525,20140312221818,20140312221822,4360163,11466,0

## License
The code is strung together from other public repos, I'm pretty sure the license is standard MIT License.
