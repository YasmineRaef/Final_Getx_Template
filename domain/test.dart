//Domain focuses on the core objectives of the application.
// Represents the business logic of the application.
// Here, you define the fundamental rules, operations, and data structures that make your app work
//----------------------------------------------------------------------------
//steps to run the testing application using the getx template:
// ---- you should go to pubspec folder and add the following: ----
//    create a folder outside lib and call it assets\lang then:
//     1- create the following 2 json folders:
//    *    ar.json containing :  
//          { 
//   "splash": "شاشه البدايه",
//   "title": "قالب باستخدام Getx ",
//   "adding": "لقد ضغط هذا العدد من المرات",
//   "dark": "للتغيير للوضع المظلم",
//   "light": "للتغيير للوضع المضئ",
//   "language": "للتغيير للانجليزيه اضغط هنا"
// }
//    * en.json containing :
//          {
//{
//   "splash": "Splash Screen",
//   "title": "Template Using Getx",
//   "adding": "You have pushed this many times",
//   "dark": "To change to dark",
//   "light": "To change to light",
//   "language": "To change to arabic press here"
// }

//    2- add the following to pubspec.yaml :
//       assets:
//          - assets/lang/en.json
//          - assets/lang/ar.json

//    3- go to the dependencies in pubspec.yaml and get the following packages:
//     dependencies:
//       flutter:
//         sdk: flutter
//       flutter_localizations:
//         sdk: flutter
//       gap:
//       get:
//       get_storage:
//----------------------------------------------------------------------------