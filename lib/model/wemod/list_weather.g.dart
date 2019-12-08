// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListWeather _$ListWeatherFromJson(Map<String, dynamic> json) {
  return ListWeather(
    namaKota: json['name'] as String,
    main: json['main'] == null
        ? null
        : MainResp.fromJson(json['main'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ListWeatherToJson(ListWeather instance) =>
    <String, dynamic>{
      'name': instance.namaKota,
      'main': instance.main,
    };
