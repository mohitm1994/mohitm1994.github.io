#!/usr/bin/env bash
# Copies the paper previews from the MPI homepage into the repo and points papers.bib at the local files.
set -euo pipefail
cd "$(dirname "$0")/.."
P=assets/img/publication_preview
BIB=_bibliography/papers.bib
BASE=https://people.mpi-inf.mpg.de/~mmendira/content

for f in GRMM.gif unigaha.gif Zero_shot_vss.gif tedra.gif AvatarStudio.gif egovid.png; do
  if curl -fsSL "$BASE/$f" -o "$P/$f"; then
    sed -i.bak "s|{$BASE/$f}|{$f}|" "$BIB" && echo "ok   $f"
  else
    echo "FAIL $f"
  fi
done
rm -f "$BIB.bak"

curl -fsSL https://people.mpi-inf.mpg.de/~mmendira/mohitm.jpg -o assets/img/prof_pic.jpg && echo "ok   prof_pic.jpg" || echo "FAIL profile photo"
