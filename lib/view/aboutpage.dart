import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  double screenHeight = 0.0, screenWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.teal[400],
      body: 
      
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              
              const Text(
                'About Us',
                style: 
                TextStyle(
                  fontFamily: 'Times New Roman', 
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  ),
              ),
                
              const SizedBox(
                height: 25,
              ),         
              const Icon(Icons.directions_car),
              const Text("Delivery to Sungai Petani, Kulim & Penang",
              style: 
                TextStyle(
                  fontFamily: 'Times New Roman', 
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  ),),
              const SizedBox(
                height: 10,
              ),
              const Icon(Icons.local_gas_station),
              const Text(
              "Self Pickup at PETRONAS - Taman Sri Wang, Sungai Petani ",
              style: 
                TextStyle(
                  fontFamily: 'Times New Roman', 
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  ),),
                const SizedBox(
                height: 10,
              ),
              const Icon(Icons.contact_phone),    
              const Text("Contact us at 016-9052425",
              style: 
                TextStyle(
                  fontFamily: 'Times New Roman', 
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  ),),
                    const SizedBox(
                height: 5,
              ),
              const Text(
                  "Instgram : @symlercooksnbake",
                  style: 
                TextStyle(
                  fontFamily: 'Times New Roman', 
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  ),),
                   const SizedBox(
                height: 20,
              ),
          
              IconButton(
                onPressed: () => Navigator.pop(context, false),
                icon: const Icon(Icons.arrow_back),
              )
            ]),
      ),
    );
  }
}
