# Owanto'o 🛍

![owanto_app](https://github.com/JordyHers/Owanto_e-commerce/blob/master/assets/owanto/collection.png?raw=true)

Owanto'o is a e-commerce platform template This project only contains the front end part and is not connected to a
database. The state management has been implemented and login,sign up, checkout pages implemented.

## 1.Template


https://user-images.githubusercontent.com/49708438/167256470-9251f9f9-207d-4d6b-baf2-16c0f9274a13.mp4

## 2.Download the repository ⬇

 Download the files or git clone the repository.
 > git clone 
 
 ## Run project

> to run the project follow the following commands 
 
```dart
> flutter pub get
> flutter clean 
> flutter run 

```

> The project starts in  **main.dart**.

```dart
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavigationProvider()),
        ChangeNotifierProvider(create: (_) => CartViewModel()),
        ChangeNotifierProvider(create: (_) => AddressViewModel()),
        ChangeNotifierProvider(
            create: (_) => ProductViewModel()..getListProduct()),
        ChangeNotifierProvider(create: (_) => AuthViewModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: kPrimaryColor,
          primaryColor: Colors.black,
        ),
        onGenerateRoute: Routes.onGenerateRouter,
        home: LoginScreen(),
      ),
    );
  }
}

```






