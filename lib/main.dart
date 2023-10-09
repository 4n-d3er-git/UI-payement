import 'dart:ffi';

import 'package:flutter/material.dart';

void main(){
  runApp(const MonApp());
}

class MonApp extends StatelessWidget {
  const MonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pratique(),
    );
  }
}

class Pratique extends StatefulWidget {
  const Pratique({super.key});

  @override
  State<Pratique> createState() => _PratiqueState();
}

class _PratiqueState extends State<Pratique> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/marie.jpg'),
              ),
              Container(
                height: 20,
                width: 35,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 104, 29, 7)
                ),
                child: Center(child: Text("PRO", style: TextStyle(color: Colors.orange[400], fontWeight: FontWeight.bold),)),
              )
            ],
            ),
            ),
            const SizedBox(height: 30,),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("VOTRE BALANCE", style: TextStyle(color: Colors.white54, fontSize: 13),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                     Text("11 458. 5809", style: TextStyle(color: Colors.white, fontSize: 30),),
                     SizedBox(width: 5,),
                     Text("USD", style: TextStyle( color: Colors.white54),)
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("MY WALLET", style: TextStyle(color: Colors.white54, fontSize: 12),),
                    SizedBox(width: 120,),
                    Icon(Icons.insert_chart_outlined_outlined,color: Colors.white, size: 15 ),
                    Icon(Icons.add, color: Colors.white, size: 15,),
                    Icon(Icons.arrow_outward, color: Colors.white, size: 15)
                  ],
                )
              ],
            ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.yellow[600],
              ),
              child: const Padding(padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("GOLD PASS", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Text("GNF,   AT  +15", style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold),),
                      SizedBox(width: 130,),
                      Text("96.24%", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),)
                    ],
                  ),
                  SizedBox(height: 100,),
                  Row(
                    children: [
                      Text("11  458. 5809", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                    ],
                  )
                ],
              ),
              ),
            ),
            Container(
              height: 48,
              decoration: BoxDecoration(
                color: Colors.yellow[700]
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("GOLD PASS", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                    SizedBox(width: 20,),
                    Text("CARTE DE PAYEMENT", style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold),),
                    SizedBox(width: 80,),
                    Text("15/20", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("SHEAR HOLDINGS", style: TextStyle(color: Colors.white54, fontSize: 13),),
                    Text("SHEAR HOLDINGS", style: TextStyle(color: Colors.white54, fontSize: 13),)
                  ],
                ),
                const SizedBox(height: 8,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("50.1520054", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                    Text("0X586...ADTX", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const Text("COMPTES", style: TextStyle(color: Colors.white54, fontSize: 13),),
                  // IconButton(Icons.insert_chart_outlined_outlined, color: Colors.white54)
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const PageConfirmation()));
                  }, icon: const Icon(Icons.insert_chart_outlined_outlined, color: Colors.white54, size: 15,)),
                ],)
              ],
            ),
            )
          ],
        )
        ),
    );
  }
}

class PageConfirmation extends StatelessWidget {
  const PageConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("ENVOYER PAIEMENT", style: TextStyle(color: Colors.white, fontSize: 14),),
        leading: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 15,),
      ),

      body: SafeArea(child: Padding(padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Center(child: Text("NUMERO DE COMPTE", style: TextStyle(color: Colors.white54),)),
          const SizedBox(height: 10,),
          const Center(child: Text("0.  15220252  KC", style: TextStyle(color: Colors.white, fontSize: 24),),),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child:Image.asset("assets/marie.jpg", height: 70, width: 70,),
                  ),
                  const SizedBox(height: 10,),
                  const Text("INCONNU", style: TextStyle(color: Colors.white54),),
                  const SizedBox(height: 10,),
                  const Text("(F4AX..5X..LM)", style: TextStyle(color: Colors.white),)
                ],
              ),
              const Center(child: Icon(Icons.change_circle_outlined, color: Colors.white, size: 50,)),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child:Image.asset("assets/ander.jpg", height: 70, width: 70,),
                  ),
                  const SizedBox(height: 10,),
                  const Text("INCONNU", style: TextStyle(color: Colors.white54),),
                  const SizedBox(height: 10,),
                  const Text("(F4AX..5X..LM)", style: TextStyle(color: Colors.white),)
                ],
              ),
            ],
          )
        ],
      ),
      )),
    );
  }
}