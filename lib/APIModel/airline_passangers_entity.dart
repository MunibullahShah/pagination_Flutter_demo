import 'package:pagination/generated/json/base/json_field.dart';
import 'package:pagination/generated/json/airline_passangers_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class AirlinePassangersEntity {
  int? totalPassengers;
  int? totalPages;
  List<AirlinePassangersData>? data;

  AirlinePassangersEntity();

  factory AirlinePassangersEntity.fromJson(Map<String, dynamic> json) =>
      $AirlinePassangersEntityFromJson(json);

  Map<String, dynamic> toJson() => $AirlinePassangersEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AirlinePassangersData {
  @JSONField(name: "_id")
  String? sId;
  String? name;
  int? trips;
  List<AirlinePassangersDataAirline>? airline;
  @JSONField(name: "__v")
  int? iV;

  AirlinePassangersData();

  factory AirlinePassangersData.fromJson(Map<String, dynamic> json) =>
      $AirlinePassangersDataFromJson(json);

  Map<String, dynamic> toJson() => $AirlinePassangersDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AirlinePassangersDataAirline {
  int? id;
  String? name;
  String? country;
  String? logo;
  String? slogan;
  @JSONField(name: "head_quaters")
  String? headQuaters;
  String? website;
  String? established;

  AirlinePassangersDataAirline();

  factory AirlinePassangersDataAirline.fromJson(Map<String, dynamic> json) =>
      $AirlinePassangersDataAirlineFromJson(json);

  Map<String, dynamic> toJson() => $AirlinePassangersDataAirlineToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
