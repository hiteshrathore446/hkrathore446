// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:intl/intl.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       localizationsDelegates: [
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ],
//       supportedLocales: [
//         Locale('en', 'US'),
//         Locale('es', 'ES'),
//         // Add more locales as needed
//       ],
//       title: 'Language Selection',
//       home: LanguageSelectionPage(),
//     );
//   }
// }

// class LanguageSelectionPage extends StatelessWidget {
//   final List<Locale> supportedLocales = [
//     Locale('en', 'US'),
//     Locale('es', 'ES'),
//     // Add more locales as needed
//   ];

//   void _changeLanguage(BuildContext context, Locale locale) {
//     // Update the app's locale
//     Intl.defaultLocale = locale.toString();
//     // Save the selected language preference (you can use shared preferences or other methods)
//     // ...
//     // Navigate to the app's main page
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(builder: (context) => MainPage()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Language'),
//       ),
//       body: ListView.builder(
//         itemCount: supportedLocales.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(supportedLocales[index].languageCode),
//             onTap: () {
//               _changeLanguage(context, supportedLocales[index]);
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Main Page'),
//       ),
//       body: Center(
//         child: Text(
//           Intl.message('Hello, world!', name: 'greeting'),
//         ),
//       ),
//     );
//   }
// }
