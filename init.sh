#!/bin/bash

# Change the colour of an AnyBar
# Usage:
#   anybar <colour>
function anybar() {
  local COLOUR=${1-white}
  echo -n "$COLOUR" > /dev/udp/10.0.2.2/"$ANYBAR_PORT"
}

# Monitor a long running command using AnyBar
# This sets AnyBar to orange whilst the command is running,
# then to green or red depending on whether the command succeeded or not
#
# Usage:
#   alias m=anybar_monitor
#   m <some command>
function anybar_monitor() {
  if [ $# -eq 0 ]; then
    anybar white
  else
    anybar orange
    $@

    local EXIT_STATUS=$?
    if [ $EXIT_STATUS -ne 0 ]; then
      anybar red
    else
      anybar green
    fi

    return $EXIT_STATUS
  fi
}
