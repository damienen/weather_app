part of models;

abstract class Location implements Built<Location, LocationBuilder> {
  factory Location([void Function(LocationBuilder b) updates]) = _$Location;

  factory Location.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json);
  }

  Location._();

  String get title;

  @nullable
  int get woeid;

  @nullable
  String get location_type;

  static Serializer<Location> get serializer => _$locationSerializer;
}
