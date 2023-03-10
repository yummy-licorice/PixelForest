import osproc, os, strutils

if paramCount() == 0:
  echo readFile("/sys/class/power_supply/BAT0/capacity")
else:
  var op = paramStr(1)
  if op == "state":
    if readFile("/sys/class/power_supply/BAT0/status").strip() == "Charging":
      echo ""
    else:
      echo ""
  if op == "time":
    var time = execCmdEx("acpi -b | rg 1: --color never").output
                .split(",")[2]
                .replace("charged", "full")
                .strip()
    echo time


