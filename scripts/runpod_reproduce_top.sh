#!/usr/bin/env bash
set -euo pipefail

: "${SEED:=42}"
: "${QK_GAIN_INIT:=5.25}"
: "${TTT_ENABLED:=1}"
: "${TTT_LR:=0.005}"
: "${TTT_EPOCHS:=3}"
: "${NPROC_PER_NODE:=8}"

SEED="$SEED" \
QK_GAIN_INIT="$QK_GAIN_INIT" \
TTT_ENABLED="$TTT_ENABLED" \
TTT_LR="$TTT_LR" \
TTT_EPOCHS="$TTT_EPOCHS" \
  torchrun --standalone --nproc_per_node="$NPROC_PER_NODE" train_gpt.py
