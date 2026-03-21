#!/bin/bash

echo "Locating Minima gem..."
MINIMA_PATH=$(bundle show minima)

if [ -z "$MINIMA_PATH" ]; then
  echo "Minima gem not found. Did you run 'bundle add minima'?"
  exit 1
fi

echo "Minima found at: $MINIMA_PATH"
echo "Copying Minima theme files into your project..."

# Copy layouts
cp -R "$MINIMA_PATH/_layouts" . 2>/dev/null

# Copy includes
cp -R "$MINIMA_PATH/_includes" . 2>/dev/null

# Copy assets
cp -R "$MINIMA_PATH/assets" . 2>/dev/null

echo "Done. Your project now contains the full Minima theme."
