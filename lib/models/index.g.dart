// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherDay> _$weatherDaySerializer = new _$WeatherDaySerializer();
Serializer<Location> _$locationSerializer = new _$LocationSerializer();

class _$WeatherDaySerializer implements StructuredSerializer<WeatherDay> {
  @override
  final Iterable<Type> types = const [WeatherDay, _$WeatherDay];
  @override
  final String wireName = 'WeatherDay';

  @override
  Iterable<Object> serialize(Serializers serializers, WeatherDay object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'weather_state_name',
      serializers.serialize(object.weather_state_name,
          specifiedType: const FullType(String)),
      'weather_state_abbr',
      serializers.serialize(object.weather_state_abbr,
          specifiedType: const FullType(String)),
      'applicable_date',
      serializers.serialize(object.applicable_date,
          specifiedType: const FullType(String)),
      'min_temp',
      serializers.serialize(object.min_temp,
          specifiedType: const FullType(double)),
      'max_temp',
      serializers.serialize(object.max_temp,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  WeatherDay deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherDayBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'weather_state_name':
          result.weather_state_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'weather_state_abbr':
          result.weather_state_abbr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'applicable_date':
          result.applicable_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'min_temp':
          result.min_temp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'max_temp':
          result.max_temp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];
    Object value;
    value = object.woeid;
    if (value != null) {
      result
        ..add('woeid')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.location_type;
    if (value != null) {
      result
        ..add('location_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'woeid':
          result.woeid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'location_type':
          result.location_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final String location;
  @override
  final bool isLoading;
  @override
  final bool isImperial;
  @override
  final BuiltList<WeatherDay> weather;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.location, this.isLoading, this.isImperial, this.weather})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, 'AppState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(isImperial, 'AppState', 'isImperial');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        location == other.location &&
        isLoading == other.isLoading &&
        isImperial == other.isImperial &&
        weather == other.weather;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, location.hashCode), isLoading.hashCode),
            isImperial.hashCode),
        weather.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('location', location)
          ..add('isLoading', isLoading)
          ..add('isImperial', isImperial)
          ..add('weather', weather))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  bool _isImperial;
  bool get isImperial => _$this._isImperial;
  set isImperial(bool isImperial) => _$this._isImperial = isImperial;

  ListBuilder<WeatherDay> _weather;
  ListBuilder<WeatherDay> get weather =>
      _$this._weather ??= new ListBuilder<WeatherDay>();
  set weather(ListBuilder<WeatherDay> weather) => _$this._weather = weather;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location;
      _isLoading = $v.isLoading;
      _isImperial = $v.isImperial;
      _weather = $v.weather?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              location: location,
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'AppState', 'isLoading'),
              isImperial: BuiltValueNullFieldError.checkNotNull(
                  isImperial, 'AppState', 'isImperial'),
              weather: _weather?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'weather';
        _weather?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$WeatherDay extends WeatherDay {
  @override
  final int id;
  @override
  final String weather_state_name;
  @override
  final String weather_state_abbr;
  @override
  final String applicable_date;
  @override
  final double min_temp;
  @override
  final double max_temp;

  factory _$WeatherDay([void Function(WeatherDayBuilder) updates]) =>
      (new WeatherDayBuilder()..update(updates)).build();

  _$WeatherDay._(
      {this.id,
      this.weather_state_name,
      this.weather_state_abbr,
      this.applicable_date,
      this.min_temp,
      this.max_temp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'WeatherDay', 'id');
    BuiltValueNullFieldError.checkNotNull(
        weather_state_name, 'WeatherDay', 'weather_state_name');
    BuiltValueNullFieldError.checkNotNull(
        weather_state_abbr, 'WeatherDay', 'weather_state_abbr');
    BuiltValueNullFieldError.checkNotNull(
        applicable_date, 'WeatherDay', 'applicable_date');
    BuiltValueNullFieldError.checkNotNull(min_temp, 'WeatherDay', 'min_temp');
    BuiltValueNullFieldError.checkNotNull(max_temp, 'WeatherDay', 'max_temp');
  }

  @override
  WeatherDay rebuild(void Function(WeatherDayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherDayBuilder toBuilder() => new WeatherDayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherDay &&
        id == other.id &&
        weather_state_name == other.weather_state_name &&
        weather_state_abbr == other.weather_state_abbr &&
        applicable_date == other.applicable_date &&
        min_temp == other.min_temp &&
        max_temp == other.max_temp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), weather_state_name.hashCode),
                    weather_state_abbr.hashCode),
                applicable_date.hashCode),
            min_temp.hashCode),
        max_temp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherDay')
          ..add('id', id)
          ..add('weather_state_name', weather_state_name)
          ..add('weather_state_abbr', weather_state_abbr)
          ..add('applicable_date', applicable_date)
          ..add('min_temp', min_temp)
          ..add('max_temp', max_temp))
        .toString();
  }
}

class WeatherDayBuilder implements Builder<WeatherDay, WeatherDayBuilder> {
  _$WeatherDay _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _weather_state_name;
  String get weather_state_name => _$this._weather_state_name;
  set weather_state_name(String weather_state_name) =>
      _$this._weather_state_name = weather_state_name;

  String _weather_state_abbr;
  String get weather_state_abbr => _$this._weather_state_abbr;
  set weather_state_abbr(String weather_state_abbr) =>
      _$this._weather_state_abbr = weather_state_abbr;

  String _applicable_date;
  String get applicable_date => _$this._applicable_date;
  set applicable_date(String applicable_date) =>
      _$this._applicable_date = applicable_date;

  double _min_temp;
  double get min_temp => _$this._min_temp;
  set min_temp(double min_temp) => _$this._min_temp = min_temp;

  double _max_temp;
  double get max_temp => _$this._max_temp;
  set max_temp(double max_temp) => _$this._max_temp = max_temp;

  WeatherDayBuilder();

  WeatherDayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _weather_state_name = $v.weather_state_name;
      _weather_state_abbr = $v.weather_state_abbr;
      _applicable_date = $v.applicable_date;
      _min_temp = $v.min_temp;
      _max_temp = $v.max_temp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherDay other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherDay;
  }

  @override
  void update(void Function(WeatherDayBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherDay build() {
    final _$result = _$v ??
        new _$WeatherDay._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'WeatherDay', 'id'),
            weather_state_name: BuiltValueNullFieldError.checkNotNull(
                weather_state_name, 'WeatherDay', 'weather_state_name'),
            weather_state_abbr: BuiltValueNullFieldError.checkNotNull(
                weather_state_abbr, 'WeatherDay', 'weather_state_abbr'),
            applicable_date: BuiltValueNullFieldError.checkNotNull(
                applicable_date, 'WeatherDay', 'applicable_date'),
            min_temp: BuiltValueNullFieldError.checkNotNull(
                min_temp, 'WeatherDay', 'min_temp'),
            max_temp: BuiltValueNullFieldError.checkNotNull(
                max_temp, 'WeatherDay', 'max_temp'));
    replace(_$result);
    return _$result;
  }
}

class _$Location extends Location {
  @override
  final String title;
  @override
  final int woeid;
  @override
  final String location_type;

  factory _$Location([void Function(LocationBuilder) updates]) =>
      (new LocationBuilder()..update(updates)).build();

  _$Location._({this.title, this.woeid, this.location_type}) : super._() {
    BuiltValueNullFieldError.checkNotNull(title, 'Location', 'title');
  }

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        title == other.title &&
        woeid == other.woeid &&
        location_type == other.location_type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, title.hashCode), woeid.hashCode), location_type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('title', title)
          ..add('woeid', woeid)
          ..add('location_type', location_type))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _woeid;
  int get woeid => _$this._woeid;
  set woeid(int woeid) => _$this._woeid = woeid;

  String _location_type;
  String get location_type => _$this._location_type;
  set location_type(String location_type) =>
      _$this._location_type = location_type;

  LocationBuilder();

  LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _woeid = $v.woeid;
      _location_type = $v.location_type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    final _$result = _$v ??
        new _$Location._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'Location', 'title'),
            woeid: woeid,
            location_type: location_type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
