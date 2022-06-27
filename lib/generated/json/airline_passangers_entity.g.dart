import 'package:pagination/generated/json/base/json_convert_content.dart';
import 'package:pagination/APIModel/airline_passangers_entity.dart';

AirlinePassangersEntity $AirlinePassangersEntityFromJson(
    Map<String, dynamic> json) {
  final AirlinePassangersEntity airlinePassangersEntity =
      AirlinePassangersEntity();
  final int? totalPassengers =
      jsonConvert.convert<int>(json['totalPassengers']);
  if (totalPassengers != null) {
    airlinePassangersEntity.totalPassengers = totalPassengers;
  }
  final int? totalPages = jsonConvert.convert<int>(json['totalPages']);
  if (totalPages != null) {
    airlinePassangersEntity.totalPages = totalPages;
  }
  final List<AirlinePassangersData>? data =
      jsonConvert.convertListNotNull<AirlinePassangersData>(json['data']);
  if (data != null) {
    airlinePassangersEntity.data = data;
  }
  return airlinePassangersEntity;
}

Map<String, dynamic> $AirlinePassangersEntityToJson(
    AirlinePassangersEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalPassengers'] = entity.totalPassengers;
  data['totalPages'] = entity.totalPages;
  data['data'] = entity.data?.map((v) => v.toJson()).toList();
  return data;
}

AirlinePassangersData $AirlinePassangersDataFromJson(
    Map<String, dynamic> json) {
  final AirlinePassangersData airlinePassangersData = AirlinePassangersData();
  final String? sId = jsonConvert.convert<String>(json['_id']);
  if (sId != null) {
    airlinePassangersData.sId = sId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    airlinePassangersData.name = name;
  }
  final int? trips = jsonConvert.convert<int>(json['trips']);
  if (trips != null) {
    airlinePassangersData.trips = trips;
  }
  final List<AirlinePassangersDataAirline>? airline = jsonConvert
      .convertListNotNull<AirlinePassangersDataAirline>(json['airline']);
  if (airline != null) {
    airlinePassangersData.airline = airline;
  }
  final int? iV = jsonConvert.convert<int>(json['__v']);
  if (iV != null) {
    airlinePassangersData.iV = iV;
  }
  return airlinePassangersData;
}

Map<String, dynamic> $AirlinePassangersDataToJson(
    AirlinePassangersData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['_id'] = entity.sId;
  data['name'] = entity.name;
  data['trips'] = entity.trips;
  data['airline'] = entity.airline?.map((v) => v.toJson()).toList();
  data['__v'] = entity.iV;
  return data;
}

AirlinePassangersDataAirline $AirlinePassangersDataAirlineFromJson(
    Map<String, dynamic> json) {
  final AirlinePassangersDataAirline airlinePassangersDataAirline =
      AirlinePassangersDataAirline();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    airlinePassangersDataAirline.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    airlinePassangersDataAirline.name = name;
  }
  final String? country = jsonConvert.convert<String>(json['country']);
  if (country != null) {
    airlinePassangersDataAirline.country = country;
  }
  final String? logo = jsonConvert.convert<String>(json['logo']);
  if (logo != null) {
    airlinePassangersDataAirline.logo = logo;
  }
  final String? slogan = jsonConvert.convert<String>(json['slogan']);
  if (slogan != null) {
    airlinePassangersDataAirline.slogan = slogan;
  }
  final String? headQuaters = jsonConvert.convert<String>(json['head_quaters']);
  if (headQuaters != null) {
    airlinePassangersDataAirline.headQuaters = headQuaters;
  }
  final String? website = jsonConvert.convert<String>(json['website']);
  if (website != null) {
    airlinePassangersDataAirline.website = website;
  }
  final String? established = jsonConvert.convert<String>(json['established']);
  if (established != null) {
    airlinePassangersDataAirline.established = established;
  }
  return airlinePassangersDataAirline;
}

Map<String, dynamic> $AirlinePassangersDataAirlineToJson(
    AirlinePassangersDataAirline entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['country'] = entity.country;
  data['logo'] = entity.logo;
  data['slogan'] = entity.slogan;
  data['head_quaters'] = entity.headQuaters;
  data['website'] = entity.website;
  data['established'] = entity.established;
  return data;
}
