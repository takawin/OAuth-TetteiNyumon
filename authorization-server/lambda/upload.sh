#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

echo "Building..."
pnpm run build

echo "Creating zip..."
rm -f dist/function.zip
cd dist
zip -r ../dist/function.zip .
cd ..

echo "Done: function.zip is ready"

FUNCTION_NAME="${LAMBDA_FUNCTION_NAME:?LAMBDA_FUNCTION_NAME is required}"

echo "Uploading to Lambda: $FUNCTION_NAME"
aws lambda update-function-code \
  --function-name "$FUNCTION_NAME" \
  --zip-file fileb://dist/function.zip

echo "Upload complete"
