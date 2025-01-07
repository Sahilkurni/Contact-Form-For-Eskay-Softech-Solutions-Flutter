# Contact Form for Eskay Softech Solutions (Flutter)

This repository contains the source code for a **Contact Form** application developed using Flutter. The app is designed to allow users to submit inquiries or feedback, streamlining communication with Eskay Softech Solutions. With a simple and responsive design, it ensures seamless interaction for users while maintaining a secure and organized backend for data handling.

---

## Features

- **User-Friendly Interface**: A minimalist and responsive design for easy navigation.
- **Contact Form**: Users can submit inquiries, feedback, or requests with relevant details.
- **Validation**: Built-in form validation to ensure accurate input.
- **Email Integration**: Send user-submitted details directly to the admin via email.
- **Database Support**: Option to store submissions in a database for future reference.
- **Cross-Platform Compatibility**: Works on both Android and iOS devices.

---

## Tech Stack

- **Frontend**: Flutter (Dart)
- **Backend**: 
  - Firebase (Firestore, optionally for data storage)
  - EmailJS or SMTP server (for email functionality)
- **State Management**: Provider / Riverpod (update if using another library)

---

## Prerequisites

- Flutter SDK installed ([Installation Guide](https://flutter.dev/docs/get-started/install))
- Firebase account (if used for database storage)
- Android Studio / Visual Studio Code for development
- Dart 2.12.0 or higher

---

## Getting Started

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Sahilkurni/Contact-Form-For-Eskay-Softech-Solutions-Flutter.git
   cd Contact-Form-For-Eskay-Softech-Solutions-Flutter
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Set up Firebase (optional)**:
   - Add the `google-services.json` file (for Android) in the `android/app` directory.
   - Add the `GoogleService-Info.plist` file (for iOS) in the `ios/Runner` directory.

4. **Configure email service**:
   - If using EmailJS, add your EmailJS credentials in the appropriate service file.
   - If using SMTP, configure your SMTP server details (host, port, username, and password).

5. **Run the application**:
   ```bash
   flutter run
   ```

---

## Folder Structure

```
lib/
|-- screens/          # UI screens for the app
|-- widgets/          # Reusable widgets
|-- models/           # Data models
|-- services/         # Email and backend integrations
|-- utils/            # Utility functions and constants
```

---

## Key Functionalities

### User Module
- **Submit Form**: Users can fill out and submit the contact form.
- **Form Validation**: Ensures all required fields are completed correctly.
- **Email Notifications**: Sends the form data to the admin email.

### Admin Module (Optional)
- **View Submissions**: If Firebase is enabled, admins can view form submissions in the Firestore database.

---

## Screenshots

(Include screenshots of the app here to provide a visual overview. Add links to images hosted online or in the repository.)

---

## Contributing

Contributions are welcome! Follow these steps:

1. Fork the repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add feature description"
   ```
4. Push to the branch:
   ```bash
   git push origin feature-name
   ```
5. Open a pull request.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Contact

For any queries or suggestions, feel free to reach out:
- **Author**: Sahil Kurni
- **Email**: sahil7march@gmail.com
- **LinkedIn**: www.linkedin.com/in/sahil-kurni

---

## Acknowledgments

- Thanks to Eskay Softech Solutions for providing the opportunity to work on this project.
- The Flutter community for their excellent documentation and support.

---
