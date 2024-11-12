import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget{
  const CurrencyConverter({super.key});
  @override
  Widget build(BuildContext context) {
    final border=OutlineInputBorder(
      borderSide:const BorderSide(
        width: 2.0,
        style: BorderStyle.solid
      ),
      borderRadius: BorderRadius.circular(10)
    );
    
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Text('0',style: TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
              style: const TextStyle(
                color: Colors.black
              ),
              decoration: InputDecoration(
                hintText: 'please enter amount in USD',
                hintStyle:const TextStyle(
                  color: Colors.black,
                ),
                prefixIcon:  Icon(Icons.monetization_on_outlined),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: border,
                enabledBorder: border
                
              ),
              keyboardType: const TextInputType.numberWithOptions(),
             ),
           )

          ],
        )
      ),
    );
  }

}