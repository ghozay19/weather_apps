import 'package:json_annotation/json_annotation.dart';


part'main_resp.g.dart';

@JsonSerializable()
class MainResp {


    String temp;
    String humidity;
    String temp_min;
    String temp_max;


    MainResp({this.temp, this.humidity, this.temp_min, this.temp_max});

    factory MainResp.fromJson(Map<String, dynamic> json) => _$MainRespFromJson(json);
    Map<String, dynamic> toJson() => _$MainRespToJson(this);
}