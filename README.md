# Murious App

Welcome to the Murious App repository! This Flutter-based mobile application is designed to enhance the experience of Murious, the annual tech fest of Jaypee University of Information Technology (JUIT).

## Table of Contents

- [Description](#description)
- [Installation and Usage](#installation-and-usage)
- [Database](#database)
- [File Structure](#file-structure)
- [Contributing](#contributing)

## Description

Murious is a three-day tech extravaganza that brings together tech enthusiasts, students, and professionals for a series of engaging and innovative tech-related events. From coding competitions to workshops, guest lectures, and entertainment, Murious offers a diverse range of activities that cater to the interests of the tech community.

The Murious App serves as a companion to the event, providing users with easy access to event information, schedules, and more. Leveraging the power of Flutter for the frontend, the app ensures a seamless and enjoyable experience for participants and attendees.

## Installation and Usage

1. **Clone the repository:**
   - Use the following command to clone the repository:
     ```bash
     git clone https://github.com/your-username/murious-app.git
     ```

2. **Navigate to the project directory:**
   ```bash
   cd murious-app
   ```

3. **Install dependencies:**
   ```bash
   flutter pub get
   ```

4. **Run the app:**
   ```bash
   flutter run

The Murious App should now be running on your local machine.

## Database

The Murious App utilizes Firebase for handling the database. Firebase provides real-time data synchronization and authentication services, enhancing the overall user experience.

### Setting up Firebase:

1. **Create a Firebase project:**
   - Visit the [Firebase Console](https://console.firebase.google.com/).
   - Click on "Add Project" and follow the setup instructions.

2. **Get Firebase configuration:**
   - In the Firebase Console, navigate to Project settings.
   - Under the "General" tab, find the "Your apps" section.
   - Copy the Firebase configuration object.

3. **Configure the app with Firebase:**
   - Open the `lib/config/firebase_config.dart` file.
   - Paste the Firebase configuration object.

4. **Add Firebase dependencies:**
   - Open the `pubspec.yaml` file.
   - Remove the following Firebase dependencies:

   - Run `flutter pub get` in your terminal to remove these dependencies.

Now, your Murious App is configured to use Firebase for real-time data synchronization and authentication services. Make sure to replace the placeholder values in the Firebase configuration object with the actual values from your Firebase project.

## File Structure

The project structure is organized as follows:

- **`lib/`**: Contains the main Dart code for the Murious App.
  - **`screens/`**: Individual screens or pages of the app.
  - **`widgets/`**: Reusable UI components.
  - **`models/`**: Data models used in the application.
  - **`services/`**: Firebase services and other external services.
  - **`utils/`**: Utility functions and helper classes.

- **`android/`** and **`ios/`**: Platform-specific configurations and settings.
- **`test/`**: Unit and widget tests.

## Contributing

We welcome contributions to the Murious App! To contribute:

1. **Fork the repository:**
   - Click the "Fork" button at the top right of the GitHub page.

2. **Clone your fork:**
   ```bash
   git clone https://github.com/your-username/murious-app.git
   ```

3. **Create a new branch:**
   ```bash
   git checkout -b feature/new-feature
   ```

4. **Make your changes and commit them:**
   ```bash
   git commit -m "Add new feature"
   ```

5. **Push the changes to your fork:**
   ```bash
   git push origin feature/new-feature
   ```

6. **Open a pull request:**
   - Visit the [main repository](https://github.com/original-repo/murious-app).
   - Click on "Pull Request" and provide a clear title and description of your changes.

We appreciate your contributions to making the Murious App even better! 🚀
