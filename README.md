
# Meetie

Meetie is a simple and efficient meeting app that enables users to create and join meetings using unique codes. It comes with powerful features such as screen sharing, video display, and real-time chat, making online communication seamless and effective. 

## Features

- **Unique Meeting Codes**: Create and join meetings using automatically generated unique codes.
- **Screen Sharing**: Share your screen during meetings to enhance collaboration and communication.
- **Video Display**: Integrated video conferencing powered by [Jitsi Meet](https://jitsi.org/), providing a high-quality video experience.
- **Real-time Chat**: Message other participants during the meeting with the help of Firebase for a smooth and responsive chat experience.
  
## Technology Stack

- **Frontend**: Flutter
- **Backend**: Firebase (Real-time database)
- **Video & Screen Sharing**: Jitsi Meet SDK
- **Authentication**: Firebase Authentication
- **Data Storage**: Firebase Firestore

## Getting Started

To get started with the app, follow these steps:

### Prerequisites

- **Flutter**: You need to have Flutter installed. You can find the installation guide [here](https://flutter.dev/docs/get-started/install).
- **Firebase**: Set up a Firebase project for your app. You can follow the Firebase setup guide [here](https://firebase.google.com/docs/flutter/setup).

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/shloksharma273/meetie.git
   ```

2. Navigate to the project directory:
   ```bash
   cd meetie
   ```

3. Install the dependencies:
   ```bash
   flutter pub get
   ```

4. Set up Firebase:
   - Follow the steps to add Firebase to your Flutter project [here](https://firebase.google.com/docs/flutter/setup).
   - Add your `google-services.json` file to the `android/app` directory.

5. Run the app:
   ```bash
   flutter run
   ```

## Usage

- **Create a Meeting**: Tap on "Create Meeting" to generate a unique code that you can share with others.
- **Join a Meeting**: Enter the unique meeting code shared with you to join the meeting.
- **Screen Sharing**: Use the "Share Screen" button during a meeting to share your screen.
- **Real-time Chat**: Send messages in real-time to other participants via the chat feature.

## Contributing

If you'd like to contribute to this project, feel free to fork the repository and submit a pull request.

1. Fork the repository
2. Create a new branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Make your changes and commit them:
   ```bash
   git commit -m "Add your commit message"
   ```
4. Push to the branch:
   ```bash
   git push origin feature/your-feature-name
   ```
5. Open a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, feel free to contact:
- **Shlok M Sharma** - [shloksharma273@gmail.com](mailto:shloksharma273@gmail.com)
