# UP 2 YOU - What's for Dinner?

An iOS application designed to combat decision fatigue around meal choices. The app helps users decide whether to cook at home or order from a favorite restaurant through engaging, gamified decision mechanisms.

## Features

### Phase 1 (Current)
- ✅ Dice Roll decision mode
- ✅ Ingredients management with SwiftData persistence
- ✅ Favorite restaurants management
- ✅ Mock recipe and restaurant data
- ✅ MVVM architecture with SwiftUI

### Phase 2 (Planned)
- Spin the Wheel decision mode
- Process of Elimination decision mode

### Phase 3 (Planned)
- Spoonacular API integration for real recipe data
- Yelp API integration for restaurant reviews
- Enhanced restaurant details

### Phase 4 (Planned)
- Onboarding flow
- Decision history
- Enhanced UI polish

## Requirements

- iOS 17.0+
- Xcode 15.0+
- Swift 5.9+

## Setup

### 1. Clone the Repository

```bash
git clone [repository-url]
cd Up2You
```

### 2. Configure API Keys

1. Copy the template configuration file:
   ```bash
   cp Config.xcconfig.template Config.xcconfig
   ```

2. Edit `Config.xcconfig` and add your API keys:
   - **Spoonacular API**: Get a free API key at [spoonacular.com/food-api](https://spoonacular.com/food-api)
   - **Yelp Fusion API**: Get an API key at [yelp.com/developers](https://www.yelp.com/developers)

3. **Important**: `Config.xcconfig` is excluded from git. Never commit your API keys.

### 3. Create Xcode Project

**Option A: Using XcodeGen (Recommended)**

1. Install XcodeGen:
   ```bash
   brew install xcodegen
   ```

2. Generate the project:
   ```bash
   xcodegen generate
   ```

3. Open `WhatsForDinner.xcodeproj` in Xcode
4. Build and run the project (⌘R)

**Option B: Manual Setup**

See `PROJECT_SETUP.md` for detailed instructions on creating the project manually in Xcode.

## Project Structure

```
WhatsForDinner/
├── App/
│   ├── WhatsForDinnerApp.swift      # App entry point
│   └── ContentView.swift            # Root navigation
├── Models/
│   ├── Recipe.swift                 # Recipe data model
│   ├── Restaurant.swift             # Restaurant SwiftData model
│   ├── Ingredient.swift             # Ingredient SwiftData model
│   └── DecisionResult.swift         # Decision result wrapper
├── ViewModels/
│   ├── HomeViewModel.swift          # Main screen state
│   └── DecisionViewModel.swift     # Decision logic
├── Views/
│   ├── Home/
│   │   └── HomeView.swift           # Main decision screen
│   ├── Decision/
│   │   ├── DiceRollView.swift       # Dice roll UI
│   │   └── DecisionViewWrapper.swift
│   ├── Ingredients/
│   │   ├── IngredientsListView.swift
│   │   └── AddIngredientView.swift
│   └── Restaurants/
│       ├── RestaurantsListView.swift
│       ├── RestaurantDetailView.swift
│       └── AddRestaurantView.swift
├── Services/
│   ├── RecipeAPIService.swift       # Recipe API client (mocked in Phase 1)
│   ├── YelpAPIService.swift         # Yelp API client (mocked in Phase 1)
│   └── PersistenceService.swift     # SwiftData operations
└── Utilities/
    ├── Constants.swift              # App constants and API keys
    └── Extensions/
        └── Date+Extensions.swift    # Date utilities
```

## Architecture

The app follows the **MVVM (Model-View-ViewModel)** pattern:

- **Models**: Data structures and SwiftData entities
- **Views**: SwiftUI views that observe ViewModels
- **ViewModels**: Business logic and state management using Combine
- **Services**: API clients and persistence layer

## Usage

1. **Add Ingredients**: Go to the Ingredients tab and add ingredients you have on hand
2. **Add Restaurants**: Go to the Restaurants tab and add your favorite restaurants
3. **Make a Decision**: Return to the Decide tab, choose a decision mode, and tap "Decide for Me!"

## Development Notes

### Phase 1 Implementation
- All API services are currently mocked with sample data
- SwiftData is used for local persistence
- The app is fully functional with mock data

### Next Steps
- Implement real API integrations (Phase 3)
- Add remaining decision modes (Phase 2)
- Enhance UI/UX based on user feedback

## License

[Add your license here]

## Contributing

[Add contribution guidelines here]
