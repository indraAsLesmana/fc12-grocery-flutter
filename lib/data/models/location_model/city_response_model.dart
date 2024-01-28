import 'dart:convert';

class CityResponseModel {
    final Rajaongkir? rajaongkir;

    CityResponseModel({
        this.rajaongkir,
    });

    factory CityResponseModel.fromJson(String str) => CityResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CityResponseModel.fromMap(Map<String, dynamic> json) => CityResponseModel(
        rajaongkir: json["rajaongkir"] == null ? null : Rajaongkir.fromMap(json["rajaongkir"]),
    );

    Map<String, dynamic> toMap() => {
        "rajaongkir": rajaongkir?.toMap(),
    };
}

class Rajaongkir {
    final Query? query;
    final Status? status;
    final List<City>? results;

    Rajaongkir({
        this.query,
        this.status,
        this.results,
    });

    factory Rajaongkir.fromJson(String str) => Rajaongkir.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Rajaongkir.fromMap(Map<String, dynamic> json) => Rajaongkir(
        query: json["query"] == null ? null : Query.fromMap(json["query"]),
        status: json["status"] == null ? null : Status.fromMap(json["status"]),
        results: json["results"] == null ? [] : List<City>.from(json["results"]!.map((x) => City.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "query": query?.toMap(),
        "status": status?.toMap(),
        "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toMap())),
    };
}

class Query {
    final String? province;

    Query({
        this.province,
    });

    factory Query.fromJson(String str) => Query.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Query.fromMap(Map<String, dynamic> json) => Query(
        province: json["province"],
    );

    Map<String, dynamic> toMap() => {
        "province": province,
    };
}

class City {
    final String? cityId;
    final String? provinceId;
    final String? province;
    final String? type;
    final String? cityName;
    final String? postalCode;

    City({
        this.cityId,
        this.provinceId,
        this.province,
        this.type,
        this.cityName,
        this.postalCode,
    });

    factory City.fromJson(String str) => City.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory City.fromMap(Map<String, dynamic> json) => City(
        cityId: json["city_id"],
        provinceId: json["province_id"],
        province: json["province"],
        type: json["type"],
        cityName: json["city_name"],
        postalCode: json["postal_code"],
    );

    Map<String, dynamic> toMap() => {
        "city_id": cityId,
        "province_id": provinceId,
        "province": province,
        "type": type,
        "city_name": cityName,
        "postal_code": postalCode,
    };

    @override
  String toString() => '$cityName';
}

class Status {
    final int? code;
    final String? description;

    Status({
        this.code,
        this.description,
    });

    factory Status.fromJson(String str) => Status.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Status.fromMap(Map<String, dynamic> json) => Status(
        code: json["code"],
        description: json["description"],
    );

    Map<String, dynamic> toMap() => {
        "code": code,
        "description": description,
    };
}
