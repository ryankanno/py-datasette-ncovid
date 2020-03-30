# py-datasette-ncovid 

Originally, this project was setup to view the data here: https://docs.google.com/spreadsheets/d/1itaohdPiAeniCXNlntNztZ_oRvjh0HsGuJXUJWET008/edit#gid=0,
but due to the limits of Google Sheets, they've since moved the csv to https://github.com/beoutbreakprepared/nCoV2019/tree/master/latest_data.

Kept all the original scripts, but just placed them into lancet folder as reference (they don't work), but repurposed this project with a new folder named hawaii to get the data here: http://j.mp/hawaiicovid19counts

```poetry install```

```./scripts/hawaii/run.sh```

If you want to share it, run ngrok

```ngrok http -subdomain=808boomshakalaka 8001```
