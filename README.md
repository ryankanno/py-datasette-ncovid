# py-datasette-ncovid 

Originally, this project was setup to view [this data](https://docs.google.com/spreadsheets/d/1itaohdPiAeniCXNlntNztZ_oRvjh0HsGuJXUJWET008/edit#gid=0) from a Lancet paper, but due to the limits of Google Sheets, they've since moved the data to a csh [here](https://github.com/beoutbreakprepared/nCoV2019/tree/master/latest_data). 

*At some point, will fix up the original scripts to pull the data from the appropriate place.

Placed the original scripts into lancet folder as reference, but repurposed this project with a new scripts folder ```hawaii``` to get serve the data [here](http://j.mp/hawaiicovid19counts) through [Datasette](https://github.com/simonw/datasette).

# Instructions

## Installation

```poetry install```

## Run Locally

```./scripts/hawaii/run.sh```

If you want to share this with the outside, run ngrok

```ngrok http -subdomain=808boomshakalaka 8001```

## Run Cloud

See [Datasette docs](https://datasette.readthedocs.io/en/stable/publish.html) on publishing your data
