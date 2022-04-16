import 'package:app_delivery_ui/theme_and_state_management/presentation/home/cart/cart_screen.dart';
import 'package:app_delivery_ui/theme_and_state_management/presentation/home/products/producs_screen.dart';
import 'package:app_delivery_ui/theme_and_state_management/presentation/home/profile/profile_screen.dart';
import 'package:app_delivery_ui/theme_and_state_management/presentation/theme.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title:  const Text('Inicio'),
      // ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: IndexedStack( //LA CANTIDAD DE INDEX TIENE QUE SER LA CANTIDAD DE WIDGET QUE DESEAS MOSTRAR
              index: currentIndex,
              children: [
                const ProductsScreen(),
                Text('CurrentIndex2 : $currentIndex', ),
                CartScreen(onShopping: (){
                  setState(() {
                    currentIndex = 0;
                  });
                }),
                Text('CurrentIndex4 : $currentIndex', ),
                const ProfileScreen()
              ],
            ),
          ),
          _DeliveryNavitationBar(
            index: currentIndex,
            onIndexSelection: ( index){
                setState(() {
                  currentIndex = index;
                });
            }
          )
        ],
      )
    );
  }
}

class _DeliveryNavitationBar extends StatelessWidget {
  final int index;
  final ValueChanged<int> onIndexSelection;
  const _DeliveryNavitationBar({Key? key, required this.index, required this.onIndexSelection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          border: Border.all(
            color: Theme.of(context).bottomAppBarColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                child: IconButton(
                  icon:  Icon(Icons.home, color: index == 0? DeliveryColors.green : DeliveryColors.lightGrey,),
                  onPressed: ()=>onIndexSelection(0),
                ),
              ),
              Material(
                child: IconButton(
                  icon:  Icon(Icons.store, color: index == 1? DeliveryColors.green : DeliveryColors.lightGrey,),
                  onPressed: ()=>onIndexSelection(1),
                ),
              ),
              Material(
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: DeliveryColors.purple ,
                  child: IconButton(
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: index == 2? DeliveryColors.green : DeliveryColors.white,
                    ),
                    onPressed: ()=>onIndexSelection(2),
                  ),
                ),
              ),
              Material(
                child: IconButton(
                  icon:  Icon(Icons.favorite_border, color: index == 3? DeliveryColors.green : DeliveryColors.lightGrey,),
                  onPressed: ()=>onIndexSelection(3),
                ),
              ),
              InkWell(
                onTap: () => onIndexSelection(4),
                child: const CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}