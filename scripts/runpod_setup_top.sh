#!/usr/bin/env bash
set -euo pipefail

python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
python3 -m pip install brotli sentencepiece
python3 -m pip install flash_attn_3 --no-deps --find-links https://windreamer.github.io/flash-attention3-wheels/cu128_torch291/

MATCHED_FINEWEB_REPO_ID=kevclark/parameter-golf \
  python3 data/cached_challenge_fineweb.py --variant sp8192

echo "Top reproduction setup complete."
