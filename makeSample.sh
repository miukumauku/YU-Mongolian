#!/bin/sh

FONT=yumongol10
TEX=yumongol

mf-nowin "\mode=localfont; input $FONT"

if [ "$?" -eq "0" ]; then
  gftopk $FONT.600gf
fi

if [ "$?" -eq "0" ]; then
  lualatex $TEX
fi

# Coding Table
(echo 'yumongol10' ; echo '\sample'; echo '\end') | luatex testfont
