import 'package:app_delivery_ui/theme_and_state_management/domain/models/product.dart';
import 'package:app_delivery_ui/theme_and_state_management/presentation/widgets/delivery_bottom.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
   
  const ProductsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2
        ),
        itemCount: Product.products.length,
        itemBuilder: (context,index){
          final product = Product.products[index];
          
          return _ItemProduct( product: product,);
        }
      )
    );
  }
}

class _ItemProduct extends StatelessWidget {
  final Product product;
  const _ItemProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  Text('\$${product.price} USD ', style: TextStyle( color: Theme.of(context).primaryColor), ),
                ],
              )
            ),
            DeliveryBottom(
              text: 'Add',
              padding: const EdgeInsets.symmetric( horizontal: 20 ,vertical: 4 ),
              onTap: (){}
            )
          ],
        ),
      ),
    );
  }
}