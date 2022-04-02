#!/bin/sh

set -a # automatically export all variables
source .env
set +a

remodel run scripts/remodel/upload-all.lua --auth "$REMODEL_AUTH"