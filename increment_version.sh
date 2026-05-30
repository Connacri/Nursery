#!/bin/bash
# Simple script to increment Flutter version in pubspec.yaml

VERSION_LINE=$(grep "version: " pubspec.yaml)
CURRENT_VERSION=$(echo $VERSION_LINE | cut -d ' ' -f 2)

# Split version and build number
VERSION=$(echo $CURRENT_VERSION | cut -d '+' -f 1)
BUILD=$(echo $CURRENT_VERSION | cut -d '+' -f 2)

# Increment build number
NEW_BUILD=$((BUILD + 1))

# Increment patch version (last part of 1.0.x)
IFS='.' read -ra ADDR <<< "$VERSION"
PATCH=$((ADDR[2] + 1))
NEW_VERSION="${ADDR[0]}.${ADDR[1]}.$PATCH"

NEW_FULL_VERSION="$NEW_VERSION+$NEW_BUILD"

sed -i "s/version: $CURRENT_VERSION/version: $NEW_FULL_VERSION/" pubspec.yaml

echo "Version incremented to $NEW_FULL_VERSION"
