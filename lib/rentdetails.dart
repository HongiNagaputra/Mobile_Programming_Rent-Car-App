import 'package:flutter/material.dart';
import 'package:rent_car_app/components/background.dart';
import 'package:rent_car_app/myrent.dart';

class RentDetails extends StatelessWidget {
  const RentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "My Rent Details",
          ),
          leading: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Material(
                      color: Colors.transparent,
                      child: IconButton(
                        onPressed: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const MyRent();
                          },)
                          );
                        }, 
                      icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),
                      ),
                    ),
                  ),
          centerTitle: true,
        ),
        body: Background(
          child: Column(
            children: [
              Card(
                color: Colors.transparent,
                margin: const EdgeInsets.only(top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 30, bottom: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Mercedez Benz S550',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'BeVietnamPro',),
                          ),
                          const Text(
                            'Luxury Sedan - 2018',
                            style: TextStyle(fontSize: 12,fontFamily: 'BeVietnamPro',),
                          ),
                          const Image(
                            image: AssetImage('assets/images/S550rent.png'),
                            width: 300,
                            height: 200,
                          ),
                          Row(
                            children: const [
                              Text(
                                'Transmission',
                                style: TextStyle(fontSize: 12,fontFamily: 'BeVietnamPro',),
                              ),
                              Text(
                                ': AT',
                                style: TextStyle(fontSize: 12,fontFamily: 'BeVietnamPro',),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                'Color',
                                style: TextStyle(fontSize: 12,fontFamily: 'BeVietnamPro',),
                              ),
                              Text(
                                ': Black',
                                style: TextStyle(fontSize: 12,fontFamily: 'BeVietnamPro',),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                'Mileage',
                                style: TextStyle(fontSize: 12,fontFamily: 'BeVietnamPro',),
                              ),
                              Text(
                                ': 983 KM',
                                style: TextStyle(fontSize: 12,fontFamily: 'BeVietnamPro',),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              Text(
                                'Start Date',
                                style: TextStyle(fontSize: 12,fontFamily: 'BeVietnamPro',),
                              ),
                              Text(
                                ': 17/02/2022',
                                style: TextStyle(fontSize: 12,fontFamily: 'BeVietnamPro',),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                'Return Date',
                                style: TextStyle(fontSize: 12,fontFamily: 'BeVietnamPro',),
                              ),
                              Text(
                                ': 18/02/2022',
                                style: TextStyle(fontSize: 12,fontFamily: 'BeVietnamPro',),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              Text(
                                'Location',
                                style: TextStyle(fontSize: 12,fontFamily: 'BeVietnamPro',),
                              ),
                              Text(
                                ': Jakarta',
                                style: TextStyle(fontSize: 12,fontFamily: 'BeVietnamPro',),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                'Total Price',
                                style: TextStyle(fontSize: 12,fontFamily: 'BeVietnamPro',),
                              ),
                              Text(
                                ': Rp. 4.444.444,00',
                                style: TextStyle(fontSize: 12,fontFamily: 'BeVietnamPro',),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}