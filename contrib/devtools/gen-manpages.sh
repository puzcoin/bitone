#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

BONED=${BONED:-$BINDIR/boned}
BONECLI=${BONECLI:-$BINDIR/bone-cli}
BONETX=${BONETX:-$BINDIR/bone-tx}
BONEQT=${BONEQT:-$BINDIR/qt/bone-qt}

[ ! -x $BONED ] && echo "$BONED not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
BONEVER=($($BONECLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for boned if --version-string is not set,
# but has different outcomes for bone-qt and bone-cli.
echo "[COPYRIGHT]" > footer.h2m
$BONED --version | sed -n '1!p' >> footer.h2m

for cmd in $BONED $BONECLI $BONETX $BONEQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${BONEVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${BONEVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
