#!/usr/bin/env bash

# newpost.sh - Create a new Jekyll blog post with front matter
# Usage examples:
#   ./newpost.sh -t "Meta Acquires Moltbook" -c "ai, tech, meta"
#   ./newpost.sh -h

set -euo pipefail

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
POSTS_DIR="${SCRIPT_DIR}/../_posts"
CATEGORIES=""

usage() {
    cat <<EOF
Usage: $SCRIPT_NAME [OPTIONS]

Creates a new Jekyll blog post in $POSTS_DIR with automatic date and slugified filename.

Options:
  -t TITLE      Post title (required unless -h is used)
  -c CATS       Comma-separated categories (e.g. "ai, tech, meta")
  -h            Show this help message and exit

Examples:
  $SCRIPT_NAME -t "Meta Acquires Moltbook" -c "ai,meta"
  $SCRIPT_NAME -t "Another Post" 
EOF
    exit 0
}

# Parse options
while getopts "t:c:h" opt; do
    case $opt in
        t) TITLE="$OPTARG" ;;
        c) CATEGORIES="$OPTARG" ;;
        h) usage ;;
        \?) echo "Invalid option: -$OPTARG" >&2; usage ;;
    esac
done

# Title is required
if [[ -z "${TITLE:-}" ]]; then
    echo "Error: -t TITLE is required" >&2
    usage
    exit 1
fi

# Slugify title → lowercase, spaces → -, remove non-alphanum chars except -
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | tr -s ' ' '-' | tr -cd 'a-z0-9-')

# Generate date parts
TODAY=$(date +"%Y-%m-%d")
FULL_DATETIME=$(date +"%Y-%m-%d %H:%M:%S %z")

# Handle timezone display (some systems show -0400, others -04:00 — normalize to -0400 style)
FULL_DATETIME="${FULL_DATETIME//:/}"   # remove colon from timezone if present

# Build filename
FILENAME="${TODAY}-${SLUG}.md"
FULL_PATH="${POSTS_DIR}/${FILENAME}"

# Make sure _posts exists
mkdir -p "$POSTS_DIR"

# Create the file
cat > "$FULL_PATH" <<EOF
---
layout: post
title:  '$TITLE'
date:   $FULL_DATETIME
categories: ${CATEGORIES:-[]}
---

EOF

echo "Created: $FULL_PATH"
echo ""
echo "Next steps:"
echo "  1. Open the file:   vim \"$FULL_PATH\"   (or your editor)"
echo "  2. Write content after the front matter"
echo "  3. git add \"$FULL_PATH\""
echo "  4. git commit -m \"Add post: $TITLE\""

# Optional: open in editor if one of these commands exists
if command -v code >/dev/null 2>&1; then
    code "$FULL_PATH" &
elif command -v vim >/dev/null 2>&1; then
    vim "$FULL_PATH"
elif command -v nano >/dev/null 2>&1; then
    nano "$FULL_PATH"
fi