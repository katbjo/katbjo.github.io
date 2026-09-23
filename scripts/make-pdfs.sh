#!/usr/bin/env sh
# Regenerates cv.pdf and publications.pdf from cv.html and publications.html.
# Needs a Chromium/Chrome binary. Run from the repository root:  sh scripts/make-pdfs.sh
set -e
cd "$(dirname "$0")/.."
BROWSER="${BROWSER:-$(command -v chromium || command -v chromium-browser || command -v google-chrome || command -v google-chrome-stable || true)}"
if [ -z "$BROWSER" ]; then echo "No Chromium/Chrome found. Set BROWSER=/path/to/chrome" >&2; exit 1; fi
for page in cv publications; do
  "$BROWSER" --headless=new --no-sandbox --disable-gpu --no-pdf-header-footer \
    --print-to-pdf="$PWD/$page.pdf" "file://$PWD/$page.html" >/dev/null 2>&1
  echo "wrote $page.pdf"
done
