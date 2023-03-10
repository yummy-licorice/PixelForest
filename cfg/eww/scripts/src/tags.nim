import osproc, strutils, strformat

const opts = {poUsePath, poDaemon, poStdErrToStdOut}
var p = startProcess("dkcmd", "", ["status", "type=ws"], nil, opts)

for line in p.lines:
  var status: seq[string]
  var icons = @["", "", "", "", "", "", "﯂"]
  for ws in line.split(":"):
    if "A" in ws or "I" in ws:
      status.add("focused")
    elif "a" in ws:
      status.add("occupied")
    elif "i" in ws:
      status.add("vacant")
    else:
      status.add("unknown")
  echo fmt"(box :orientation `h` :halign `start` (button :class `{status[0]}` :onclick `dkcmd ws view 1` `1 {icons[0]}`) (button :class `{status[1]}` :onclick `dkcmd ws view 2` `2 {icons[1]}`) (button :class `{status[2]}` :onclick `dkcmd ws view 3` `3 {icons[2]}`) (button :class `{status[3]}` :onclick `dkcmd ws view 4` `4 {icons[3]}`) (button :class `{status[4]}` :onclick `dkcmd ws view 5` `5 {icons[4]}`) (button :class `{status[5]}` :onclick `dkcmd ws view 6` `6 {icons[5]}`) (button :class `{status[6]}` :onclick `dkcmd ws view 7` `7 {icons[6]}`))"