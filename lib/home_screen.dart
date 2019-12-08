import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_apps/unused/model.dart';
import 'package:weather_apps/model/weather_api_resp.dart';
import 'package:weather_apps/services/weather_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  
  WeatherService service;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

      service = WeatherService();
  }
  
  
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: FutureBuilder<WeatherApiResp>(
            future: service.getWeather('1642907'),
            builder: (context,snapshot){
              if (snapshot.hasData) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount : snapshot.data.list.length,
                  itemBuilder: (context,index){
                    return Column(
                      children: <Widget>[
                        Container(
                          height: size.height / 2 ,
                          color: Colors.lightBlueAccent,
                          child: Column(
                            children: <Widget>[
                              Text(snapshot.data.list[index].name,style: TextStyle(color: Colors.white),),
                              Text(snapshot.data.list[index].main.humidity.toString() ,style: TextStyle(color: Colors.white),),
                              Text(snapshot.data.list[index].main.temp.toString() + " °C" ,style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                        Container(
                          height: size.height / 2 ,
                        )
                      ],
                    );

                  },


                );
              }else{
                return Text('kosong');
              }

            },
          ),
        ),
      ),
    );
  }
}
