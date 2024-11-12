import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget{
 const CurrencyConverterPage({super.key});
 @override
  State<CurrencyConverterPage> createState()=> _CurrencyConverterPage();
}

class _CurrencyConverterPage extends State<CurrencyConverterPage>{
  double result=0;
  final TextEditingController textEditingController=TextEditingController();
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
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title:  Title(color: Colors.white, child: 
       const Text(
        'Currency converter')
        ),
        centerTitle: true,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('INR $result',
           style: const TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Colors.black
              ),
              decoration: InputDecoration(
                hintText: 'please enter amount in USD',
                hintStyle:const TextStyle(
                  color: Colors.black,
                ),
                prefixIcon: const  Icon(Icons.monetization_on_outlined),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: border,
                enabledBorder: border
                
              ),
              keyboardType: const TextInputType.numberWithOptions(decimal: true
              ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: ElevatedButton(onPressed: (){
              result=double.parse(textEditingController.text)*84.3;
              setState(() {
                
              });
             },style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.black,
                 foregroundColor: Colors.white,
                 minimumSize: const Size(double.infinity, 50),
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                 )
             
             ) ,
             child: const Text('Convert')),
           )

          ],
        )
      ),
    );
  }


}

