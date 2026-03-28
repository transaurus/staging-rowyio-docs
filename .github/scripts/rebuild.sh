#!/usr/bin/env bash
set -euo pipefail

# rebuild.sh for rowyio/docs
# Docusaurus 2.0.0-beta.17, Yarn v1 (classic), Node 16+
# Runs on existing source tree (no clone). Installs deps and builds.
# Does NOT run write-translations.

echo "[INFO] Node version: $(node -v)"
echo "[INFO] Yarn version: $(yarn --version)"

# --- Install dependencies ---
echo "[INFO] Installing dependencies..."
yarn install --frozen-lockfile

# --- Build ---
echo "[INFO] Building..."
yarn build

echo "[DONE] Build complete."
