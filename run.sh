#!/bin/sh
webhook -hooks config.json -header Access-Control-Allow-Origin=* -verbose -port 9123
