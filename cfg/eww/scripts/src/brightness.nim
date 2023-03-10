import osproc, math, strutils, os

if paramCount() == 0:
  echo execCmdEx("light").output.strip().parseFloat().round().toInt()
else:
  var op = paramStr(1)
  if op == "scroll":
    var dir = paramStr(2)
    if dir == "up":
      discard execShellCmd("light -A 5")
    else:
      discard execShellCmd("light -U 5")
  elif op == "mon":
    echo execCmdEx("xrandr --listactivemonitors | rg --color never 0").output.split("  ")[1].strip()

