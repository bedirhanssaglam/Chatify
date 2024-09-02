<div align="center">
    <h1>Chatify</h1>
</div>

This project is a messaging application developed using [Flutter](https://flutter.dev/), [Bloc](https://pub.dev/packages/flutter_bloc), [Firebase](https://pub.dev/packages/firebase_core) and [Firebase Auth](https://pub.dev/packages/firebase_auth). The app offers a number of features that allow users to message each other in real time. Below you can find screenshots of the application and features it offers.

### Project Structure 

```
📂 lib
  📂 feature  
  📂 product
  📄 app.dart
  📄 main.dart
📂 module
  📂 core
  📂 gen
  📂 widget
📄 pubspec.yaml      
```

### Features

#### Messaging Features
- **Real-Time Messaging**: Users can start one-on-one chats and send text messages in real time.

- **Photo Sharing**: Users can select and send photos from their gallery within the messaging screen.

- **Read Receipts**: Displays a "seen" icon to show whether the recipient has read the messages.

#### User Management
- **Sign Up**: New users can sign up using their email and password.
- **Log In**: Existing users can log in using their email and password.

#### Theme and Language Support
- **Dark and Light Theme**: Users can switch between dark and light themes in the application.
- **Multi-Language Support**: The application supports both English and Turkish. Users can switch between languages from the settings.

#### Additional Features
- **Firebase Auth Integration**: User authentication is handled through Firebase Auth.
- **Firebase Firestore**: Real-time messaging is powered by Firebase Firestore.
- **Bloc State Management**: The application uses Bloc for state management to enhance code organization and reusability.
