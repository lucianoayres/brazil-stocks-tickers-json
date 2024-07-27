# Brazil Stocks Tickers JSON Repository

## Overview

This repository contains a JSON file that stores information about the tickers and names of companies listed on the B3 stock exchange in Brazil. The data is organized in alphabetical order by the `ticker` property value to facilitate sorting and processing.

## Repository Structure

-   `b3_stocks_tickers.json`: The primary JSON file containing the list of tickers and company names. This file can be sorted to facilitate easier processing.
-   `sort_json_by_ticker.sh`: A script to sort the `b3_stocks_tickers.json` file by the `ticker` property value.

## File Format

The JSON file consists of an array of objects, where each object represents a company and includes the following properties:

```json
[
  {
    "ticker": "PETR",
    "name": "PETROBRAS"
  },
  ...
]
```
