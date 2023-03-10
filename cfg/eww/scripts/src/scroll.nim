import os

let direction = paramStr(1)
 
if direction == "up":
    discard execShellCmd("dkcmd ws view next")
elif direction == "down":
    discard execShellCmd("dkcmd ws view prev")