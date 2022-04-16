import 'package:app_delivery_ui/theme_and_state_management/presentation/home/home_screen.dart';
import 'package:app_delivery_ui/theme_and_state_management/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widgets/delivery_bottom.dart';

const logoSize = 45.0;

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    final width = size.width;
    const moreSize = 50;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 2,
              child: Stack(
                  children:  [
                    Positioned(  
                      bottom: logoSize,
                      left: -moreSize/2,
                      right: -moreSize/2,
                      height: width + moreSize,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size.width/2),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.5, 1.0],
                            colors: deliveryGradients
                          )
                         ),
                      )
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Positioned(
                          bottom: 0,
                          child: CircleAvatar(
                            radius: logoSize,
                            backgroundColor: Theme.of(context).canvasColor,
                            child: Padding(
                              padding: const EdgeInsets.all(14),
                              child: Image.network('https://yt3.ggpht.com/ytc/AKedOLT6I_MIbj5QLULyhuxwIRhyBcz6Gr10VWfkA-6j=s176-c-k-c0x00ffffff-no-rj',
                              color: Theme.of(context).primaryColor,
                              )
                            ),
                          )
                      ),
                    )
                  ],
                ),
          ),
          Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:  [
                      const SizedBox(height: 40,),
                      Text('Login', style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.bold,
                      ), textAlign: TextAlign.center,),
                      const SizedBox(height: 20,),
                       Text('Username',
                        style: Theme.of(context).textTheme.caption?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).inputDecorationTheme.labelStyle?.color
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline,
                            color: Theme.of(context).iconTheme.color,
                          ),
                          hintText: 'username'
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Text('Password',
                        style: Theme.of(context).textTheme.caption?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).inputDecorationTheme.labelStyle?.color
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password_outlined,
                            color: Theme.of(context).iconTheme.color,
                          ),
                          hintText: 'Password'
                        ),
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
              )
          ),
          Padding(
            padding: const  EdgeInsets.all(25),
            child: DeliveryBottom(
              text: 'Login',
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ( _ )=> const HomeScreen()));
              },
            ),
          )
        ],
      ),
    );
  }
}

//UNa forma


// Positioned.fill(  //* Toma todo el espacio de s padre
//     bottom: logoSize,
//     child: Container(
//       decoration:  BoxDecoration(
//         color: Colors.redAccent,
//         borderRadius: BorderRadius.vertical(bottom: Radius.circular(size.width/2))
//       ),
//     )
//   )

