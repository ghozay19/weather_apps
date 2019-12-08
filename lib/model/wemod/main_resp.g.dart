// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainResp _$MainRespFromJson(Map<String, dynamic> json) {
  return MainResp(
    temp: json['temp'] as String,
    humidity: json['humidity'] as String,
    temp_min: json['temp_min'] as String,
    temp_max: json['temp_max'] as String,
  );
}

Map<String, dynamic> _$MainRespToJson(MainResp instance) => <String, dynamic>{
      'temp': instance.temp,
      'humidity': instance.humidity,
      'temp_min': instance.temp_min,
      'temp_max': instance.temp_max,
    };
