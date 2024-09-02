<div align="center">
    <h1>Chatify</h1>
</div>

This project is a messaging application developed using [Flutter](https://flutter.dev/), [Bloc](https://pub.dev/packages/flutter_bloc), [Firebase](https://pub.dev/packages/firebase_core) and [Firebase Auth](https://pub.dev/packages/firebase_auth). The app offers a number of features that allow users to message each other in real time. Below you can find screenshots of the application and features it offers.

### Screenshots

#### iOS

<p float="left">
<table>
    <tbody>
            <td align="center" style="background-color: white">
                <img width="175" src="https://github.com/user-attachments/assets/18417fed-5a7d-486e-a154-4c89aa39c785"/></a>
            </td>
            <td align="center" style="background-color: white">
               <img src="https://github.com/user-attachments/assets/f86810d6-afed-4849-aa81-11e6b17395bb" width="175"/></a>
            </td>
              <td align="center" style="background-color: white">
                <img src="https://github.com/user-attachments/assets/844e3917-0ba0-4466-9ce2-d2d812e034dd" width="175"/></a>
            </td>
            <td align="center" style="background-color: white">
                <img src="https://github.com/user-attachments/assets/06d2e6b4-180f-45d5-8c63-4b111d95b3bb" width="175"/></a>
            </td>
            <td align="center" style="background-color: white">
                <img src="https://github.com/user-attachments/assets/dff88a31-3731-4d43-8fb3-2020c34e06e0" width="175"/></a>
            </td>    
    </tbody>
</table>
</p>

#### Android

<table>
    <tbody>
            <td align="center" style="background-color: white">
                <img width="175" src="https://github.com/user-attachments/assets/43e88377-0303-48d7-9853-5bbd99890341"/></a>
            </td>
            <td align="center" style="background-color: white">
               <img src="https://github.com/user-attachments/assets/2ed3a31a-935a-4786-a1d0-8e8fa19f821b" width="175"/></a>
            </td>
              <td align="center" style="background-color: white">
                <img src="https://github.com/user-attachments/assets/caaf3cd0-95b0-4b42-ba2e-6a4f4ef59311" width="175"/></a>
            </td>
            <td align="center" style="background-color: white">
                <img src="https://github.com/user-attachments/assets/21a1d7b3-9f4d-439a-aebe-07230654e7c9" width="175"/></a>
            </td>
            <td align="center" style="background-color: white">
                <img src="https://github.com/user-attachments/assets/ad0afb33-2edf-4187-8c32-8835a6814249" width="175"/></a>
            </td>
            <td align="center" style="background-color: white">
                <img src="https://github.com/user-attachments/assets/a12b74d6-04e1-464c-b40e-470f5c65f254" width="175"/></a>
            </td>    
    </tbody>
</table>

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
