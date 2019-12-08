// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) {
  return ApiResponse(
    main: json['main'] == null
        ? null
        : MainResponse.fromJson(json['main'] as Map<String, dynamic>),
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'main': instance.main,
      'name': instance.name,
    };
