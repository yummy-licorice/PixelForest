import os, osproc, strutils

var op = paramStr(1)
if op == "up":
  discard execShellCmd("pamixer --increase 2")
elif op == "down":
  discard execShellCmd("pamixer --decrease 2")
elif op == "sink":
  echo execCmdEx("pamixer --get-default-sink").output
        .splitLines()[1]
        .split("\"")[3]
