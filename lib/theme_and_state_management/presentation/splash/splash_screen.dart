
import 'package:app_delivery_ui/theme_and_state_management/presentation/login/login_screen.dart';
import 'package:app_delivery_ui/theme_and_state_management/presentation/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
   
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> { //* Como es un Splash hare un timer

  

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 2), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> const LoginScreen()));
    });

    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Scaffold(
        body: Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: deliveryGradients
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                child: ClipOval(
                  child: Image.network('https://yt3.ggpht.com/ytc/AKedOLT6I_MIbj5QLULyhuxwIRhyBcz6Gr10VWfkA-6j=s176-c-k-c0x00ffffff-no-rj',
                  fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Text('Delivery App',textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline4?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),)
            ],
          ),
        ),
      ),
    );
  }
}