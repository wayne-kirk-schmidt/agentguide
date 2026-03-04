#!/usr/bin/env bash

set -euo pipefail

umask 022

AI_DIR="AI"

FILES=(
    agent/CONTEXT.md
    agent/INSTRUCTIONS.md
    agent/GUARDRAILS.md
    agent/GUIDELINES.md
    agent/SKILLS.md
    agent/INSIGHTS.md
)

for f in "${FILES[@]}"; do
    AI_TARGET="${AI_DIR}/${f}"
    [ -f "${AI_TARGET}" ] || continue
    echo
    echo "### ${f} ###"
    cat -n "${AI_TARGET}"
done
