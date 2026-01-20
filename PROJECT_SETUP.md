# Xcode Project Setup Instructions

Since creating a complete Xcode project file programmatically is complex, please follow these steps to set up the project in Xcode:

## Option 1: Create Project in Xcode (Recommended)

1. **Open Xcode** and select "Create a new Xcode project"

2. **Choose Template:**
   - Select "iOS" tab
   - Choose "App"
   - Click "Next"

3. **Configure Project:**
   - Product Name: `WhatsForDinner`
   - Team: Select your development team
   - Organization Identifier: `com.yourcompany` (or your preferred identifier)
   - Interface: **SwiftUI**
   - Language: **Swift**
   - Storage: **SwiftData**
   - ✅ Include Tests (optional)
   - Click "Next"

4. **Save Location:**
   - Navigate to `/Users/chase/Desktop/Up2You`
   - **Important:** Uncheck "Create Git repository" if you want to manage git separately
   - Click "Create"

5. **Replace Generated Files:**
   - Delete the default `ContentView.swift` and `WhatsForDinnerApp.swift` files
   - Copy all files from the `WhatsForDinner/` directory into the project
   - In Xcode, right-click the project → "Add Files to WhatsForDinner..."
   - Select all Swift files from the `WhatsForDinner/` directory
   - Make sure "Copy items if needed" is checked
   - Ensure "Create groups" is selected
   - Click "Add"

6. **Configure Build Settings:**
   - Select the project in the navigator
   - Select the "WhatsForDinner" target
   - Go to "Build Settings" tab
   - Search for "iOS Deployment Target"
   - Set it to **17.0**

7. **Add API Keys (Optional for Phase 1):**
   - Create `Config.xcconfig` file (copy from template)
   - Add your API keys
   - In Build Settings, add `$(SPOONACULAR_API_KEY)` and `$(YELP_API_KEY)` to Info.plist values

8. **Build and Run:**
   - Select a simulator or device
   - Press ⌘R to build and run

## Option 2: Use XcodeGen (Advanced)

If you prefer a programmatic approach, you can use [XcodeGen](https://github.com/yonaskolb/XcodeGen):

1. Install XcodeGen:
   ```bash
   brew install xcodegen
   ```

2. Create a `project.yml` file (see example below)

3. Generate the project:
   ```bash
   xcodegen generate
   ```

### Example project.yml

```yaml
name: WhatsForDinner
options:
  bundleIdPrefix: com.example
  deploymentTarget:
    iOS: "17.0"
targets:
  WhatsForDinner:
    type: application
    platform: iOS
    deploymentTarget: "17.0"
    sources:
      - path: WhatsForDinner
    settings:
      base:
        PRODUCT_BUNDLE_IDENTIFIER: com.example.WhatsForDinner
        SWIFT_VERSION: "5.9"
        IPHONEOS_DEPLOYMENT_TARGET: "17.0"
```

## File Organization

After setup, your Xcode project should have this structure:

```
WhatsForDinner.xcodeproj
WhatsForDinner/
├── App/
│   ├── WhatsForDinnerApp.swift
│   └── ContentView.swift
├── Models/
│   ├── Recipe.swift
│   ├── Restaurant.swift
│   ├── Ingredient.swift
│   └── DecisionResult.swift
├── ViewModels/
│   ├── HomeViewModel.swift
│   └── DecisionViewModel.swift
├── Views/
│   ├── Home/
│   ├── Decision/
│   ├── Ingredients/
│   └── Restaurants/
├── Services/
│   ├── RecipeAPIService.swift
│   ├── YelpAPIService.swift
│   └── PersistenceService.swift
└── Utilities/
    ├── Constants.swift
    └── Extensions/
```

## Troubleshooting

### SwiftData Not Working
- Ensure iOS Deployment Target is set to 17.0+
- Verify SwiftData imports are present
- Check that `@Model` macros are used correctly

### API Keys Not Loading
- For Phase 1, mock keys are used by default
- To use real keys, set up `Config.xcconfig` properly
- Check that keys are accessible via `Bundle.main.object(forInfoDictionaryKey:)`

### Build Errors
- Clean build folder: Product → Clean Build Folder (⇧⌘K)
- Check that all files are added to the target
- Verify Swift version compatibility (5.9+)
