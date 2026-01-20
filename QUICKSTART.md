# Quick Start Guide

## Prerequisites

- macOS with Xcode 15.0+ installed
- iOS 17.0+ deployment target support

## Fastest Setup (Using XcodeGen)

1. **Install XcodeGen:**
   ```bash
   brew install xcodegen
   ```

2. **Generate Xcode Project:**
   ```bash
   cd /Users/chase/Desktop/Up2You
   xcodegen generate
   ```

3. **Open in Xcode:**
   ```bash
   open WhatsForDinner.xcodeproj
   ```

4. **Build and Run:**
   - Select a simulator (iOS 17.0+)
   - Press ⌘R to build and run

That's it! The project is ready to use.

## Manual Setup

If you prefer to create the project manually in Xcode, see `PROJECT_SETUP.md` for detailed step-by-step instructions.

## Verify Installation

After opening the project:

1. ✅ Check that all 21 Swift files are visible in the project navigator
2. ✅ Verify iOS Deployment Target is set to 17.0
3. ✅ Build the project (⌘B) - should succeed with no errors
4. ✅ Run on simulator - app should launch successfully

## First Run

1. Add some ingredients (e.g., "chicken", "rice", "garlic")
2. Add some restaurants (mark favorites with the heart icon)
3. Go to the Decide tab
4. Tap "Decide for Me!" to test the dice roll decision mode

## Troubleshooting

- **Build Errors**: Clean build folder (⇧⌘K) and rebuild
- **SwiftData Issues**: Ensure iOS Deployment Target is 17.0+
- **Missing Files**: Verify all files from `WhatsForDinner/` directory are added to the target

## Next Steps

- Phase 1 is complete! The app works with mock data
- For Phase 3, add your API keys to `Config.xcconfig`
- See `README.md` for full documentation
