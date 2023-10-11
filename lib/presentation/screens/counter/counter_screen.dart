import 'package:flutter/material.dart';
class Counter extends StatefulWidget {
  const Counter({super.key});
  @override
  State<Counter> createState() => _CounterState();
}
class _CounterState extends State<Counter> {
  int countador = 10;
  String textito = "Click";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$countador',
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
          Text(textito, 
          style: const TextStyle(fontSize: 60))
          ],
        ),
      ),
      floatingActionButton:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
                setState(() {
                countador ++;
                if (countador == 1) {
                textito = "Click";
                }else {
                  textito = "Clicks";
                }
                });
            },
              child: const Icon(Icons.plus_one),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            onPressed: () {
                setState(() {
                if (countador == 0){
                  textito = "No mas clicks!";
                }else{
                  countador --;
                  if (countador == 1) {
                  textito = "Click";
                }
                }});
              }, child: const Icon(Icons.exposure_minus_1)),
          const SizedBox(height: 12),
          FloatingActionButton(
          onPressed: () {
            setState(() {
              countador = 0;
              textito = "Click";
            });
          }, child: const Icon(Icons.refresh_rounded))
        ],
      ),
    );
  }
}