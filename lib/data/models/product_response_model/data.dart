import 'dart:convert';

import 'product.dart';
import 'link.dart';

class Data {
  int? currentPage;
  List<Product>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Link>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  Data({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  factory Data.fromMap(Map<String, dynamic> data) => Data(
        currentPage: data['current_page'] as int?,
        data: (data['data'] as List<dynamic>?)
            ?.map((e) => Product.fromMap(e as Map<String, dynamic>))
            .toList(),
        firstPageUrl: data['first_page_url'] as String?,
        from: data['from'] as int?,
        lastPage: data['last_page'] as int?,
        lastPageUrl: data['last_page_url'] as String?,
        links: (data['links'] as List<dynamic>?)
            ?.map((e) => Link.fromMap(e as Map<String, dynamic>))
            .toList(),
        nextPageUrl: data['next_page_url'] as String?,
        path: data['path'] as String?,
        perPage: data['per_page'] as int?,
        prevPageUrl: data['prev_page_url'] as dynamic,
        to: data['to'] as int?,
        total: data['total'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'current_page': currentPage,
        'data': data?.map((e) => e.toMap()).toList(),
        'first_page_url': firstPageUrl,
        'from': from,
        'last_page': lastPage,
        'last_page_url': lastPageUrl,
        'links': links?.map((e) => e.toMap()).toList(),
        'next_page_url': nextPageUrl,
        'path': path,
        'per_page': perPage,
        'prev_page_url': prevPageUrl,
        'to': to,
        'total': total,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Data].
  factory Data.fromJson(String data) {
    return Data.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Data] to a JSON string.
  String toJson() => json.encode(toMap());
}
