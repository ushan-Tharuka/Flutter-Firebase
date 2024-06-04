# Flutter Firebase Authentication 2024

A Flutter application demonstrating Firebase Authentication with various methods including Google Sign-In, Email and Password Sign-In, and Anonymous Sign-In.

## Features

- **Email and Password Authentication**
  - Register a new user
  - Login an existing user
  - Password reset
- **Google Sign-In**
- **Anonymous Authentication**

## Screenshots

![Login Screen](screenshots/login.png)
![Register Screen](screenshots/register.png)
![register](https://github.com/ushan-Tharuka/Flutter-firebase/assets/74971901/c3077b31-b298-4a60-9a58-77a5d9a5e004)

![Home Screen](screenshots/home.png)

## Getting Started

### Prerequisites

Ensure you have the following installed:

- Flutter SDK: [Installation Guide](https://flutter.dev/docs/get-started/install)
- Firebase CLI: [Installation Guide](https://firebase.google.com/docs/cli#install_the_firebase_cli)

### Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/flutter_firebase_authentication.git
   cd flutter_firebase_authentication
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Set up Firebase:**
   - Go to the [Firebase Console](https://console.firebase.google.com/).
   - Create a new project (or use an existing one).
   - Add an Android and/or iOS app to your Firebase project.
   - Download the `google-services.json` file for Android and place it in the `android/app` directory.
   - Download the `GoogleService-Info.plist` file for iOS and place it in the `ios/Runner` directory.

4. **Configure Firebase Authentication:**
   - In the Firebase Console, enable the authentication methods you wish to use (Email/Password, Google, Anonymous).

5. **Initialize Firebase in your Flutter project:**
   - Ensure your `firebase_options.dart` file is correctly generated. If not, run:
     ```bash
     flutterfire configure
     ```

### Running the App

To run the app, use the following command:

```bash
flutter run
```

## Project Structure

- `lib/`
  - `main.dart` - The entry point of the application.
  - `auth/`
    - `auth_service.dart` - Contains the authentication logic.
    - `auth_state.dart` - Manages the authentication state.
  - `screens/`
    - `login_screen.dart` - Login screen UI.
    - `register_screen.dart` - Register screen UI.
    - `home_screen.dart` - Home screen UI for authenticated users.
  - `widgets/`
    - `custom_button.dart` - Custom button widget.
    - `custom_input.dart` - Custom input widget.

## Usage

### Email and Password Authentication

1. **Register:**
   - Go to the Register screen.
   - Enter your email and password.
   - Click the Register button.

2. **Login:**
   - Go to the Login screen.
   - Enter your email and password.
   - Click the Login button.

3. **Password Reset:**
   - On the Login screen, click the "Forgot Password?" link.
   - Enter your email to receive password reset instructions.

### Google Sign-In

1. **Sign-In:**
   - On the Login screen, click the "Sign in with Google" button.
   - Follow the Google sign-in prompts.

### Anonymous Authentication

1. **Sign-In:**
   - On the Login screen, click the "Continue as Guest" button.

## Contributing

Contributions are welcome! Please submit a pull request or open an issue to discuss changes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Contact

For any questions or feedback, please contact ushantharuka2222@gmail.com
