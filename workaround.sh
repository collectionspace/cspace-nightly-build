#!/bin/bash

# if there has been no repository update in 60 days
# GH actions will disable the test workflow, so this
# can be used every now and again to trick it:
# https://docs.github.com/en/actions/managing-workflow-runs/disabling-and-enabling-a-workflow
echo '('`date +"%s.%N"` ' * 1000000)/1' | bc > timestamp
