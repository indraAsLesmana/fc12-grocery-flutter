class StoreModel {
  final String name;
  final StoreEnum type;
  final String imageUrl;

  StoreModel({
    required this.name,
    required this.type,
    required this.imageUrl,
  });
}

enum StoreEnum {
  star('Star'),
  starPlus('Star +'),
  officialStore('Official Store');

  final String value;
  const StoreEnum(this.value);

  factory StoreEnum.getType(String value) {
    return values.firstWhere(
      (value) => value.value == '$value',
      orElse: () => StoreEnum.star,
    );
  }
}
