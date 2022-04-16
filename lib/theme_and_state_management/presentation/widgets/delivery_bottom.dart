import 'package:app_delivery_ui/theme_and_state_management/presentation/theme.dart';
import 'package:flutter/material.dart';
class DeliveryBottom extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final EdgeInsets? padding;
  const DeliveryBottom({Key? key, required this.onTap, required this.text, this.padding = const EdgeInsets.all(15) }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            padding: padding,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.center,
                colors: deliveryGradients
              )
    
            ),
            child:  Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
              ),
          ),
          )
      ),
    );
  }
}