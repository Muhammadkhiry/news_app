# 📰 News App

A modern Flutter News application that fetches the latest headlines from **NewsAPI** and displays them in a clean, responsive, and user-friendly interface.

## ✨ Features

- 📰 Browse the latest news
- 📂 Explore news by category
- 🌐 Fetch live news using REST API
- 🖼️ Display article images
- ⏳ Loading indicator while fetching data
- ⚠️ Error handling for failed requests
- 📱 Responsive Material Design UI

---

## 📸 Screenshots
### Home Screen

| Loading | Loaded |
|---------|---------|
| ![](screenshots/loading_home.png) | ![](screenshots/entertainment_news.png) |

---

### Categories

| Sports |
|----------|--------|
| ![](screenshots/sports_news.png) |

| Science |
|---------|----------|
| ![](screenshots/science_news.png) |

| Technology | Different Categories |
|------------|----------------------|
| ![](screenshots/tech_news.png) | ![](screenshots/different_categories.png) |

---
## 🛠️ Built With

- Flutter
- Dart
- Dio
- REST API
- NewsAPI

---

## 📂 Project Structure

```text
lib
│
├── components
│   ├── article_builder.dart
│   ├── categories_list.dart
│   ├── category_builder.dart
│   ├── news_view.dart
│   └── news_view_builder.dart
│
├── models
│   ├── article_model.dart
│   └── category_model.dart
│
├── services
│   └── news_service.dart
│
├── views
│   ├── category_view.dart
│   ├── home_view.dart
│   └── main.dart
│
└── assets
    ├── business.avif
    ├── entertainment.avif
    ├── general.avif
    ├── health.avif
    ├── science.avif
    ├── sports.avif
    └── technology.jpeg
```

---

## 📦 Dependencies

```yaml
dio: ^latest
```

---

## 🚀 Getting Started

### Clone the repository

```bash
git clone https://github.com/Muhammadkhiry/news_app.git
```

### Navigate to the project

```bash
cd news_app
```

### Install dependencies

```bash
flutter pub get
```

### Run the application

```bash
flutter run
```

---

## 🔑 API Key

This project uses **NewsAPI**.

Get your free API key from:

https://newsapi.org/

Replace your API key inside:

```dart
lib/services/news_service.dart
```

Example:

```dart
const String apiKey = "YOUR_API_KEY";
```

> **Note:** Never upload your personal API key to GitHub.

---

## 🎯 Future Improvements

- 🔍 Search for news
- ❤️ Favorite articles
- 🌙 Dark Mode
- 🔄 Pull to Refresh
- 📄 Infinite Scrolling
- 💾 Local Caching
- 🌍 Country Selection

---

## 👨‍💻 Author

**Muhammad Khiry**

- GitHub: https://github.com/Muhammadkhiry

---

### ⭐ If you like this project, don't forget to leave a Star!