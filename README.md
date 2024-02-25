<h1 align="center">TrendSharing: a Framework to Discover and Follow the Trends for Shared Mobility Services</h1>

## Requirements
* Java Development Kit (JDK) >= 11
* Apache Maven 3.x

## Quick Start
1. Clone the repository `git clone https://github.com/cyhw/TrendSharing.git` 
2. Generate an executable JAR file containing all dependencies `mvn package`
3. Run the **TS** algorithm with all parameters on the Cainiao dataset `bash cainiao.sh tbtarp`
4. All metrics results can be found in `./cainiao/<algorithmName>_<batchPeriod>_edt<edtRatio>_nW<nW>_nT<nT>_speed<speed>.txt`

## Usage
```
usage: nyc.jar [--num_Task] [--num_Worker] [--pointFile] [--taskFile] [--workerFile]
               [--speed] [--algorithmName] [--batchPeriod] [--edtRatio]
```
