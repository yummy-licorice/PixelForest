import osproc, os, strutils

if paramCount() == 0:
  var name = execCmdEx("iwgetid -r").output.strip()

  if name == "":
    echo "Not connected"
  else:
    echo name
else:
  var op = paramStr(1)
  if op == "adapter":
    echo execCmdEx("iwgetid").output.split(" ")[0].strip()