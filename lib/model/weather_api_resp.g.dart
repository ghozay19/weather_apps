// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherApiResp _$WeatherApiRespFromJson(Map<String, dynamic> json) {
  return WeatherApiResp(
    list: (json['list'] as List)
        ?.map((e) =>
            e == null ? null : ApiResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WeatherApiRespToJson(WeatherApiResp instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
