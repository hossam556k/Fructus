# 🍓 Fructus — A SwiftUI Fruit Encyclopedia

<p align="center">
  <img src="https://img.shields.io/badge/Platform-iOS-blue?style=for-the-badge&logo=apple" />
  <img src="https://img.shields.io/badge/Language-Swift-orange?style=for-the-badge&logo=swift" />
  <img src="https://img.shields.io/badge/Framework-SwiftUI-0A84FF?style=for-the-badge&logo=swift" />
  <img src="https://img.shields.io/badge/IDE-Xcode-147EFB?style=for-the-badge&logo=xcode" />
</p>

**Fructus** is a colorful, playful encyclopedia of fruits built entirely with **SwiftUI**. It features a page-style onboarding experience, a scrollable fruit list, detailed fruit pages with nutritional info, and a polished Settings screen — all powered by the SwiftUI App Life Cycle.

---

## 📱 Screenshots

| Onboarding | Fruit List | Fruit Details | Settings |
|:---:|:---:|:---:|:---:|
| <img src="Screenshots/onboarding.png" width="200"/> | <img src="Screenshots/list.png" width="200"/> | <img src="Screenshots/detail.png" width="200"/> | <img src="Screenshots/settings.png" width="200"/> |

> Add your own screenshots to a `Screenshots/` folder in the repo root.

---

## ✨ Features

- 🎉 **Onboarding screen** built with `TabView` + `PageTabViewStyle` (swipeable fruit cards)
- 💾 **Persistent state** using `@AppStorage` backed by `UserDefaults`
- 🔄 **Restart onboarding** from the Settings screen via a toggle
- 🍎 **Fruit list** generated dynamically with `ForEach`
- 📖 **Detail view** with header, description, nutrients, and a "Learn more" link
- 🧭 **Scroll views** — both horizontal and vertical containers
- ⚙️ **Settings view** with app info, customization, and developer/app details
- 🎨 **Custom app icon** and high-quality image assets
- 🌗 Adaptive layout and smooth animations

---

## 🎯 Learning Objectives

This project covers:

- Setting up a new iOS project with the **SwiftUI App Life Cycle** (`@main` + `App` protocol)
- Designing a unique **Onboarding** experience
- Using the **`@AppStorage`** property wrapper
- Saving and loading data with **`UserDefaults`**
- Building reusable **custom views**
- Modeling local data with **Structs** in Swift
- Rendering multiple views automatically with **`ForEach`**
- Working with **`ScrollView`**, `HStack`, and `VStack` containers
- Creating a well-structured **Settings** screen
- Adding **App Icons** and image assets
- Using **Xcode Canvas & Previews** effectively
- Testing in the **Xcode Simulator**

---

## 🗂 Project Structure

```
Fructus/
├── App/
│   └── FructusApp.swift          # App entry point (SwiftUI App Life Cycle)
├── Model/
│   └── FruitModel.swift          # Fruit struct
├── Data/
│   └── FruitData.swift           # Local fruit data
├── View/
│   ├── OnboardingView.swift      # Page tab onboarding
│   ├── ContentView.swift         # Fruit list
│   ├── FruitDetailView.swift     # Fruit details
│   └── SettingsView.swift        # Settings screen
├── Components/
│   ├── FruitCardView.swift
│   ├── StartButtonView.swift
│   ├── FruitRowView.swift
│   ├── FruitHeaderView.swift
│   ├── FruitNutrientsView.swift
│   ├── SourceLinkView.swift
│   └── SettingsLabelView.swift / SettingsRowView.swift
└── Assets.xcassets               # App icon, fruit images, colors
```

---

## 🧠 Key Concepts

### App Life Cycle + Onboarding switch
```swift
@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true

    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
```

### Page-style Onboarding
```swift
TabView {
    ForEach(fruits[0...5]) { item in
        FruitCardView(fruit: item)
    }
}
.tabViewStyle(PageTabViewStyle())
.padding(.vertical, 20)
```

### Restart onboarding from Settings
```swift
@AppStorage("isOnboarding") var isOnboarding: Bool = false

Toggle(isOn: $isOnboarding) {
    Text(isOnboarding ? "RESTARTED" : "RESTART")
}
```

---

## 🛠 Requirements

- iOS 14.0+
- Xcode 12.0+
- Swift 5.3+

---

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/Fructus.git
   ```
2. Open the project in Xcode:
   ```bash
   cd Fructus
   open Fructus.xcodeproj
   ```
3. Select an iPhone simulator and press **⌘ + R** to run.

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!
Feel free to open an issue or submit a pull request.

---

## 📄 License

This project is for educational purposes. Licensed under the [MIT License](LICENSE).

---

<p align="center">Made with ❤️ and SwiftUI</p>
