
import 'dart:ui';

import 'package:app_delivery_ui/theme_and_state_management/domain/models/product.dart';
import 'package:app_delivery_ui/theme_and_state_management/presentation/theme.dart';
import 'package:app_delivery_ui/theme_and_state_management/presentation/widgets/delivery_bottom.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final VoidCallback onShopping;
   
  const CartScreen({Key? key, required this.onShopping}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      // body: _EmpyCard( onShopping: onShopping, ),
      body: _FullCard(),
    );
  }
}


class _FullCard extends StatelessWidget {
  const _FullCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            // color: Colors.amber,
            child: Padding( //!AQUI HAY UN ERROR EN EL ITEM SI ESQUE *** SE UTILIZA UN STRECH EN EL ELEMENTO HIJO DE _ShoppingCartProduct
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemExtent: 230,
                itemCount: Product.products.length,
                itemBuilder: (context, index) => _ShoppingCartProduct(product: Product.products[index],)
              ),
            ),
          )
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card( 
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Theme.of(context).canvasColor,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sub total',style: TextStyle(color: Theme.of(context).primaryColor),),
                        Text('0.0 usd',style: TextStyle(color: Theme.of(context).primaryColor),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery',style: TextStyle(color: Theme.of(context).primaryColor),),
                        Text('Free',style: TextStyle(color: Theme.of(context).primaryColor),),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total',style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),),
                        Text('\$85.0 usd',style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),),
                      ],
                    ),
                    const Spacer(),
                    DeliveryBottom(
                      onTap: (){},
                      text: 'Checkout'
                    )
                  ],
                ),
              ),
            ),
          )
        ),
      ],
    );
  }
}


class _ShoppingCartProduct extends StatelessWidget {
  final Product product;
  const _ShoppingCartProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Theme.of(context).canvasColor,
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      child: ClipOval(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(product.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    )
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox( height: 5,),
                        Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold),),
                        const SizedBox( height: 5,),
                        Text(product.description,
                          style: Theme.of(context).textTheme.overline?.copyWith(color: Theme.of(context).hintColor),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox( height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  decoration:  BoxDecoration(
                                    color: DeliveryColors.veryLightGrey,
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: const Icon(Icons.remove,color: DeliveryColors.grey,size: 20,),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric( horizontal: 10),
                                child:  Text('1', style: TextStyle(color: Theme.of(context).hintColor),),
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  decoration:  BoxDecoration(
                                    color: DeliveryColors.purple,
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: const Icon(Icons.add,color: DeliveryColors.white,size: 20,),
                                ),
                              ),
                              const Spacer(),
                              Text('\$${product.price} ', style: const TextStyle( color: DeliveryColors.green, fontWeight: FontWeight.bold), ),
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                ],
              ),
            ),
          ),
        ),

        Positioned(
          right: 0,
          child: InkWell(
            onTap: (){},
            child: const CircleAvatar(
              backgroundColor: DeliveryColors.pink,
              child: Icon(Icons.delete, color: DeliveryColors.white,),
            ),
          ),
        )
      ],
    )
    ;
  }
}




class _EmpyCard extends StatelessWidget {
  final VoidCallback onShopping;

  const _EmpyCard({Key? key, required this.onShopping}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Icon(Icons.remove_shopping_cart_outlined , size: 100, color: DeliveryColors.green,),
        const SizedBox(height: 20,),
        Text('There are no products', style: TextStyle(color: Theme.of(context).primaryColor), textAlign: TextAlign.center, ),
        const SizedBox(height: 10,),
        Center(
          child: ElevatedButton(
            onPressed: onShopping ,
            child:  const Padding(
              padding:  EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Text('Go shopping',style: TextStyle(fontWeight: FontWeight.bold), ),
            ),
            style: ElevatedButton.styleFrom(
              shape:  const StadiumBorder(),
              primary: DeliveryColors.purple
            ),
          )
        )
      ],
    );
  }
}