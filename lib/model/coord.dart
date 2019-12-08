import 'package:json_annotation/json_annotation.dart';

part'coord.g.dart';

@JsonSerializable()
class Coord {


  @JsonKey(name: 'lon')
  String longitude;

  @JsonKey(name: 'lat')
  String latitude;


  Coord(this.longitude, this.latitude);

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
    Map<String, dynamic> toJson() => _$CoordToJson(this);
}