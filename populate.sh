#!/bin/bash

# Items from github.com/johnkerl/scripts

fundam=$HOME/scripts/fundam

for x in \
  ax backn base64dec base64enc base64tohex bffind bu catnz catwhich chop clot \
  colprint cpick crafter craftern cratchange crbefore creach d2b d2h depthsort \
  dspc each escurl fage fminus gmsort gmt2sec grepr h2b h2d hex interleave Jj \
  justtime keep-lines-after keep-lines-before keep-lines-between krepl left \
  lensort linepart lines linesort lright lrparen lsr mdate mgrep mgrepv mrepl \
  mwhich namecat nbu nf nocolon parapart parlensort parside parsort path-whereis \
  peach pjoin printthrice printthricej printtwice printtwicej right rmr scrunch \
  sec2gmt snurc stremp swipe systime uind unhex uniqm upcase ustamp
do
  cp $fundam/$x bin-general/
done

# cd ~/git/johnkerl/miller
# env GOOS=linux GOARCH=x86_64 go build mlr
