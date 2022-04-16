import 'dart:ui';

import 'package:app_delivery_ui/theme_and_state_management/presentation/theme.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
   
  const ProfileScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: DeliveryColors.green
                  ),
                  child: const Padding(
                    padding:  EdgeInsets.all(5.0),
                    child:  CircleAvatar(
                      radius: 50,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Text('Erandin Pineda cosales', 
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Card(
                    color: Theme.of(context).canvasColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric( horizontal: 20,vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Personal information',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor
                            ),
                          ),
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Personal information',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Theme.of(context).primaryColor
                            ),
                          ),
                          const SizedBox(height: 20,),
                          SwitchListTile(
                            contentPadding: EdgeInsets.zero,
                            value: true,
                            title: Text('Dark Mode'),
                            onChanged: (val){
                              val = false;
                            }
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Center(
                  child: ElevatedButton(
                    onPressed: (){} ,
                    child:  const Padding(
                      padding:  EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      child: Text('Log Out',style: TextStyle(fontWeight: FontWeight.bold), ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape:  const StadiumBorder(),
                      primary: DeliveryColors.purple
                    ),
                  )
                )
              ],
              
            ),
          )
        ],
      ),
    );
  }
}