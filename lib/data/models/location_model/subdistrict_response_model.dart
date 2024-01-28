import 'dart:convert';

class SubdistrictResponseModel {
    final Rajaongkir? rajaongkir;

    SubdistrictResponseModel({
        this.rajaongkir,
    });

    factory SubdistrictResponseModel.fromJson(String str) => SubdistrictResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory SubdistrictResponseModel.fromMap(Map<String, dynamic> json) => SubdistrictResponseModel(
        rajaongkir: json["rajaongkir"] == null ? null : Rajaongkir.fromMap(json["rajaongkir"]),
    );

    Map<String, dynamic> toMap() => {
        "rajaongkir": rajaongkir?.toMap(),
    };
}

class Rajaongkir {
    final Query? query;
    final Status? status;
    final List<Subdistrict>? results;

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
        results: json["results"] == null ? [] : List<Subdistrict>.from(json["results"]!.map((x) => Subdistrict.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "query": query?.toMap(),
        "status": status?.toMap(),
        "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toMap())),
    };
}

class Query {
    final String? city;

    Query({
        this.city,
    });

    factory Query.fromJson(String str) => Query.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Query.fromMap(Map<String, dynamic> json) => Query(
        city: json["city"],
    );

    Map<String, dynamic> toMap() => {
        "city": city,
    };
}

class Subdistrict {
    final String? subdistrictId;
    final String? provinceId;
    final String? province;
    final String? cityId;
    final String? city;
    final String? type;
    final String? subdistrictName;

    Subdistrict({
        this.subdistrictId,
        this.provinceId,
        this.province,
        this.cityId,
        this.city,
        this.type,
        this.subdistrictName,
    });

    factory Subdistrict.fromJson(String str) => Subdistrict.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Subdistrict.fromMap(Map<String, dynamic> json) => Subdistrict(
        subdistrictId: json["subdistrict_id"],
        provinceId: json["province_id"],
        province: json["province"],
        cityId: json["city_id"],
        city: json["city"],
        type: json["type"],
        subdistrictName: json["subdistrict_name"],
    );

    Map<String, dynamic> toMap() => {
        "subdistrict_id": subdistrictId,
        "province_id": provinceId,
        "province": province,
        "city_id": cityId,
        "city": city,
        "type": type,
        "subdistrict_name": subdistrictName,
    };

    @override
  String toString() => '$subdistrictName';
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
