#!/bin/bash
set -ex
if [[ " $TESTPILOT_ENABLE_PONTOON_BRANCHES " =~ " $CIRCLE_BRANCH " ]]; then
    NODE_ENV=production ENABLE_PONTOON=1 ENABLE_DEV_LOCALES=1 npm run static
else
    NODE_ENV=production ENABLE_PONTOON=0 ENABLE_DEV_LOCALES=0 npm run static
fi
