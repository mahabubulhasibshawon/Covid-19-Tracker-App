# covid19_tracker_app


A Flutter-based COVID-19 Tracker app that fetches real-time COVID-19 data from the [disease.sh API](https://disease.sh/v3/covid-19/). This app displays global COVID-19 statistics, country-specific data, and more, with an intuitive user interface.

## 🛠️ Project Structure

The project is organized into three main folders:

- **Model**
    - `WorldStatesModel.dart`: Defines the data model for world COVID-19 statistics, mapping the JSON response from the API to Dart objects.

- **Services**
    - **Utilities**
        - `app_url.dart`: Contains the base URL and endpoint paths for the API requests, making it easy to manage and modify API calls.

- **View**
    - `world_states.dart`: Displays the global COVID-19 statistics, including total cases, recovered cases, and deaths.
    - `splash_screen.dart`: A splash screen that appears when the app is launched, providing a smooth introduction to the app.
    - `details_screen.dart`: Shows detailed statistics for a specific country, allowing users to get more in-depth information.
    - `countries_list.dart`: Displays a list of countries, allowing users to select a country and view its COVID-19 statistics.

## 🌐 API Information

This app uses the [disease.sh API](https://disease.sh/v3/covid-19/) to fetch up-to-date COVID-19 data. The API provides endpoints for:
- **Global statistics**: Total cases, recoveries, and deaths worldwide.
- **Country-specific data**: COVID-19 statistics for individual countries.

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- A code editor like VS Code or Android Studio.

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/covid-19-tracker.git
   cd covid-19-tracker
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the app:**
   ```bash
   flutter run
   ```

## 📂 Folder Structure

```
lib
│
├── model
│   └── WorldStatesModel.dart
│
├── services
│   └── utilities
│       └── app_url.dart
│
├── view
│   ├── splash_screen.dart
│   ├── world_states.dart
│   ├── details_screen.dart
│   └── countries_list.dart
│
└── main.dart
```

## 🔑 Key Features

- **Global COVID-19 Stats**: View total cases, recovered, and deaths worldwide.
- **Country-specific Data**: Browse a list of countries and select one to view detailed statistics.
- **Interactive UI**: User-friendly interface with smooth transitions and intuitive navigation.
- **Real-time Data**: Data is fetched in real-time from the `disease.sh` API, ensuring up-to-date information.

## ⚠️ Important Considerations

- **API Rate Limiting**: Ensure to handle potential rate-limiting from the API gracefully, with appropriate error messages or fallback data.
- **Error Handling**: Implement error handling for cases where the API might be down or the user’s network connection is unstable.
- **Data Privacy**: Respect user privacy by avoiding any unnecessary data collection beyond what is required for fetching and displaying COVID-19 statistics.

## 🤝 Contributing

Contributions are welcome! If you have any suggestions or improvements, feel free to submit a pull request or open an issue.

1. Fork the repository.
2. Create a new branch.
3. Make your changes.
4. Submit a pull request.


## 📞 Contact

For any questions or suggestions, feel free to reach out:

- **Email**: mahabubulhasibshawon@gmail.com
- **LinkedIn**: [Mahabub Ul Hasib Shawon](https://www.linkedin.com/in/mahbub-ul-hasib-shawon/)

---
