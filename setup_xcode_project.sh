#!/bin/bash

# Script to create Xcode project for WhatsForDinner
# This script creates a basic Xcode project structure

set -e

PROJECT_NAME="WhatsForDinner"
PROJECT_DIR="WhatsForDinner"
XCODE_PROJECT="${PROJECT_NAME}.xcodeproj"

echo "Setting up Xcode project for ${PROJECT_NAME}..."

# Check if Xcode is installed
if ! command -v xcodebuild &> /dev/null; then
    echo "Error: Xcode command line tools not found."
    echo "Please install Xcode from the App Store and run: xcode-select --install"
    exit 1
fi

# Check if project already exists
if [ -d "${XCODE_PROJECT}" ]; then
    echo "Warning: ${XCODE_PROJECT} already exists."
    read -p "Do you want to remove it and create a new one? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -rf "${XCODE_PROJECT}"
    else
        echo "Aborting."
        exit 1
    fi
fi

# Method 1: Try using XcodeGen if available
if command -v xcodegen &> /dev/null; then
    echo "Using XcodeGen to generate project..."
    xcodegen generate
    echo "Project generated successfully!"
    echo "Open ${XCODE_PROJECT} in Xcode to continue."
    exit 0
fi

# Method 2: Provide instructions for manual creation
echo ""
echo "XcodeGen not found. Please use one of these methods:"
echo ""
echo "METHOD 1: Install XcodeGen (Recommended)"
echo "  brew install xcodegen"
echo "  Then run this script again"
echo ""
echo "METHOD 2: Create project manually in Xcode"
echo "  1. Open Xcode"
echo "  2. File > New > Project"
echo "  3. Choose 'iOS' > 'App'"
echo "  4. Product Name: ${PROJECT_NAME}"
echo "  5. Interface: SwiftUI"
echo "  6. Language: Swift"
echo "  7. Storage: SwiftData"
echo "  8. Save in: $(pwd)"
echo "  9. Delete the default ContentView.swift and ${PROJECT_NAME}App.swift"
echo "  10. Add all files from ${PROJECT_DIR}/ directory to the project"
echo "  11. Set iOS Deployment Target to 17.0"
echo ""
echo "See PROJECT_SETUP.md for detailed instructions."

exit 0
