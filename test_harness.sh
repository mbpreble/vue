#!/usr/bin/env bash
set -e
LOOP_MAX=100
i=1

# Try to run the test until failure
while [ $i -lt $LOOP_MAX ]
do
  npx karma start test/unit/karma.cover.config.js
  echo "Completed run $i"
done
