import 'dart:convert';

class CostResponseModel {
    final Rajaongkir? rajaongkir;

    CostResponseModel({
        this.rajaongkir,
    });

    factory CostResponseModel.fromJson(String str) => CostResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CostResponseModel.fromMap(Map<String, dynamic> json) => CostResponseModel(
        rajaongkir: json["rajaongkir"] == null ? null : Rajaongkir.fromMap(json["rajaongkir"]),
    );

    Map<String, dynamic> toMap() => {
        "rajaongkir": rajaongkir?.toMap(),
    };
}

class Rajaongkir {
    final Query? query;
    final Status? status;
    final NDetails? originDetails;
    final NDetails? destinationDetails;
    final List<Result>? results;

    Rajaongkir({
        this.query,
        this.status,
        this.originDetails,
        this.destinationDetails,
        this.results,
    });

    factory Rajaongkir.fromJson(String str) => Rajaongkir.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Rajaongkir.fromMap(Map<String, dynamic> json) => Rajaongkir(
        query: json["query"] == null ? null : Query.fromMap(json["query"]),
        status: json["status"] == null ? null : Status.fromMap(json["status"]),
        originDetails: json["origin_details"] == null ? null : NDetails.fromMap(json["origin_details"]),
        destinationDetails: json["destination_details"] == null ? null : NDetails.fromMap(json["destination_details"]),
        results: json["results"] == null ? [] : List<Result>.from(json["results"]!.map((x) => Result.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "query": query?.toMap(),
        "status": status?.toMap(),
        "origin_details": originDetails?.toMap(),
        "destination_details": destinationDetails?.toMap(),
        "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toMap())),
    };
}

class NDetails {
    final String? subdistrictId;
    final String? provinceId;
    final String? province;
    final String? cityId;
    final String? city;
    final String? type;
    final String? subdistrictName;

    NDetails({
        this.subdistrictId,
        this.provinceId,
        this.province,
        this.cityId,
        this.city,
        this.type,
        this.subdistrictName,
    });

    factory NDetails.fromJson(String str) => NDetails.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory NDetails.fromMap(Map<String, dynamic> json) => NDetails(
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
}

class Query {
    final String? origin;
    final String? originType;
    final String? destination;
    final String? destinationType;
    final int? weight;
    final String? courier;

    Query({
        this.origin,
        this.originType,
        this.destination,
        this.destinationType,
        this.weight,
        this.courier,
    });

    factory Query.fromJson(String str) => Query.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Query.fromMap(Map<String, dynamic> json) => Query(
        origin: json["origin"],
        originType: json["originType"],
        destination: json["destination"],
        destinationType: json["destinationType"],
        weight: json["weight"],
        courier: json["courier"],
    );

    Map<String, dynamic> toMap() => {
        "origin": origin,
        "originType": originType,
        "destination": destination,
        "destinationType": destinationType,
        "weight": weight,
        "courier": courier,
    };
}

class Result {
    final String? code;
    final String? name;
    final List<ResultCost>? costs;

    Result({
        this.code,
        this.name,
        this.costs,
    });

    factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Result.fromMap(Map<String, dynamic> json) => Result(
        code: json["code"],
        name: json["name"],
        costs: json["costs"] == null ? [] : List<ResultCost>.from(json["costs"]!.map((x) => ResultCost.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "code": code,
        "name": name,
        "costs": costs == null ? [] : List<dynamic>.from(costs!.map((x) => x.toMap())),
    };
}

class ResultCost {
    final String? service;
    final String? description;
    final List<CostCost>? cost;

    ResultCost({
        this.service,
        this.description,
        this.cost,
    });

    factory ResultCost.fromJson(String str) => ResultCost.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ResultCost.fromMap(Map<String, dynamic> json) => ResultCost(
        service: json["service"],
        description: json["description"],
        cost: json["cost"] == null ? [] : List<CostCost>.from(json["cost"]!.map((x) => CostCost.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "service": service,
        "description": description,
        "cost": cost == null ? [] : List<dynamic>.from(cost!.map((x) => x.toMap())),
    };
}

class CostCost {
    final int? value;
    final String? etd;
    final String? note;

    CostCost({
        this.value,
        this.etd,
        this.note,
    });

    factory CostCost.fromJson(String str) => CostCost.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CostCost.fromMap(Map<String, dynamic> json) => CostCost(
        value: json["value"],
        etd: json["etd"],
        note: json["note"],
    );

    Map<String, dynamic> toMap() => {
        "value": value,
        "etd": etd,
        "note": note,
    };
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
