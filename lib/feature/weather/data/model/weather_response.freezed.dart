// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponse {
  String get success => throw _privateConstructorUsedError;
  Records get records => throw _privateConstructorUsedError;

  /// Serializes this WeatherResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
    WeatherResponse value,
    $Res Function(WeatherResponse) then,
  ) = _$WeatherResponseCopyWithImpl<$Res, WeatherResponse>;
  @useResult
  $Res call({String success, Records records});

  $RecordsCopyWith<$Res> get records;
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res, $Val extends WeatherResponse>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? records = null}) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as String,
            records: null == records
                ? _value.records
                : records // ignore: cast_nullable_to_non_nullable
                      as Records,
          )
          as $Val,
    );
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordsCopyWith<$Res> get records {
    return $RecordsCopyWith<$Res>(_value.records, (value) {
      return _then(_value.copyWith(records: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherResponseImplCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$$WeatherResponseImplCopyWith(
    _$WeatherResponseImpl value,
    $Res Function(_$WeatherResponseImpl) then,
  ) = __$$WeatherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String success, Records records});

  @override
  $RecordsCopyWith<$Res> get records;
}

/// @nodoc
class __$$WeatherResponseImplCopyWithImpl<$Res>
    extends _$WeatherResponseCopyWithImpl<$Res, _$WeatherResponseImpl>
    implements _$$WeatherResponseImplCopyWith<$Res> {
  __$$WeatherResponseImplCopyWithImpl(
    _$WeatherResponseImpl _value,
    $Res Function(_$WeatherResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? records = null}) {
    return _then(
      _$WeatherResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as String,
        records: null == records
            ? _value.records
            : records // ignore: cast_nullable_to_non_nullable
                  as Records,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherResponseImpl implements _WeatherResponse {
  const _$WeatherResponseImpl({required this.success, required this.records});

  factory _$WeatherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherResponseImplFromJson(json);

  @override
  final String success;
  @override
  final Records records;

  @override
  String toString() {
    return 'WeatherResponse(success: $success, records: $records)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.records, records) || other.records == records));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, records);

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      __$$WeatherResponseImplCopyWithImpl<_$WeatherResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherResponseImplToJson(this);
  }
}

abstract class _WeatherResponse implements WeatherResponse {
  const factory _WeatherResponse({
    required final String success,
    required final Records records,
  }) = _$WeatherResponseImpl;

  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherResponseImpl.fromJson;

  @override
  String get success;
  @override
  Records get records;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Records _$RecordsFromJson(Map<String, dynamic> json) {
  return _Records.fromJson(json);
}

/// @nodoc
mixin _$Records {
  String get datasetDescription => throw _privateConstructorUsedError;
  List<Location> get location => throw _privateConstructorUsedError;

  /// Serializes this Records to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Records
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordsCopyWith<Records> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsCopyWith<$Res> {
  factory $RecordsCopyWith(Records value, $Res Function(Records) then) =
      _$RecordsCopyWithImpl<$Res, Records>;
  @useResult
  $Res call({String datasetDescription, List<Location> location});
}

/// @nodoc
class _$RecordsCopyWithImpl<$Res, $Val extends Records>
    implements $RecordsCopyWith<$Res> {
  _$RecordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Records
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? datasetDescription = null, Object? location = null}) {
    return _then(
      _value.copyWith(
            datasetDescription: null == datasetDescription
                ? _value.datasetDescription
                : datasetDescription // ignore: cast_nullable_to_non_nullable
                      as String,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as List<Location>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RecordsImplCopyWith<$Res> implements $RecordsCopyWith<$Res> {
  factory _$$RecordsImplCopyWith(
    _$RecordsImpl value,
    $Res Function(_$RecordsImpl) then,
  ) = __$$RecordsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String datasetDescription, List<Location> location});
}

/// @nodoc
class __$$RecordsImplCopyWithImpl<$Res>
    extends _$RecordsCopyWithImpl<$Res, _$RecordsImpl>
    implements _$$RecordsImplCopyWith<$Res> {
  __$$RecordsImplCopyWithImpl(
    _$RecordsImpl _value,
    $Res Function(_$RecordsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Records
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? datasetDescription = null, Object? location = null}) {
    return _then(
      _$RecordsImpl(
        datasetDescription: null == datasetDescription
            ? _value.datasetDescription
            : datasetDescription // ignore: cast_nullable_to_non_nullable
                  as String,
        location: null == location
            ? _value._location
            : location // ignore: cast_nullable_to_non_nullable
                  as List<Location>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordsImpl implements _Records {
  const _$RecordsImpl({
    required this.datasetDescription,
    required final List<Location> location,
  }) : _location = location;

  factory _$RecordsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordsImplFromJson(json);

  @override
  final String datasetDescription;
  final List<Location> _location;
  @override
  List<Location> get location {
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_location);
  }

  @override
  String toString() {
    return 'Records(datasetDescription: $datasetDescription, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordsImpl &&
            (identical(other.datasetDescription, datasetDescription) ||
                other.datasetDescription == datasetDescription) &&
            const DeepCollectionEquality().equals(other._location, _location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    datasetDescription,
    const DeepCollectionEquality().hash(_location),
  );

  /// Create a copy of Records
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordsImplCopyWith<_$RecordsImpl> get copyWith =>
      __$$RecordsImplCopyWithImpl<_$RecordsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordsImplToJson(this);
  }
}

abstract class _Records implements Records {
  const factory _Records({
    required final String datasetDescription,
    required final List<Location> location,
  }) = _$RecordsImpl;

  factory _Records.fromJson(Map<String, dynamic> json) = _$RecordsImpl.fromJson;

  @override
  String get datasetDescription;
  @override
  List<Location> get location;

  /// Create a copy of Records
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordsImplCopyWith<_$RecordsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get locationName => throw _privateConstructorUsedError;
  List<WeatherElement> get weatherElement => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({String locationName, List<WeatherElement> weatherElement});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? locationName = null, Object? weatherElement = null}) {
    return _then(
      _value.copyWith(
            locationName: null == locationName
                ? _value.locationName
                : locationName // ignore: cast_nullable_to_non_nullable
                      as String,
            weatherElement: null == weatherElement
                ? _value.weatherElement
                : weatherElement // ignore: cast_nullable_to_non_nullable
                      as List<WeatherElement>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
    _$LocationImpl value,
    $Res Function(_$LocationImpl) then,
  ) = __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String locationName, List<WeatherElement> weatherElement});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
    _$LocationImpl _value,
    $Res Function(_$LocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? locationName = null, Object? weatherElement = null}) {
    return _then(
      _$LocationImpl(
        locationName: null == locationName
            ? _value.locationName
            : locationName // ignore: cast_nullable_to_non_nullable
                  as String,
        weatherElement: null == weatherElement
            ? _value._weatherElement
            : weatherElement // ignore: cast_nullable_to_non_nullable
                  as List<WeatherElement>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl({
    required this.locationName,
    required final List<WeatherElement> weatherElement,
  }) : _weatherElement = weatherElement;

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String locationName;
  final List<WeatherElement> _weatherElement;
  @override
  List<WeatherElement> get weatherElement {
    if (_weatherElement is EqualUnmodifiableListView) return _weatherElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherElement);
  }

  @override
  String toString() {
    return 'Location(locationName: $locationName, weatherElement: $weatherElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            const DeepCollectionEquality().equals(
              other._weatherElement,
              _weatherElement,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    locationName,
    const DeepCollectionEquality().hash(_weatherElement),
  );

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(this);
  }
}

abstract class _Location implements Location {
  const factory _Location({
    required final String locationName,
    required final List<WeatherElement> weatherElement,
  }) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String get locationName;
  @override
  List<WeatherElement> get weatherElement;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherElement _$WeatherElementFromJson(Map<String, dynamic> json) {
  return _WeatherElement.fromJson(json);
}

/// @nodoc
mixin _$WeatherElement {
  String get elementName => throw _privateConstructorUsedError;
  List<TimeInfo> get time => throw _privateConstructorUsedError;

  /// Serializes this WeatherElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherElementCopyWith<WeatherElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherElementCopyWith<$Res> {
  factory $WeatherElementCopyWith(
    WeatherElement value,
    $Res Function(WeatherElement) then,
  ) = _$WeatherElementCopyWithImpl<$Res, WeatherElement>;
  @useResult
  $Res call({String elementName, List<TimeInfo> time});
}

/// @nodoc
class _$WeatherElementCopyWithImpl<$Res, $Val extends WeatherElement>
    implements $WeatherElementCopyWith<$Res> {
  _$WeatherElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? elementName = null, Object? time = null}) {
    return _then(
      _value.copyWith(
            elementName: null == elementName
                ? _value.elementName
                : elementName // ignore: cast_nullable_to_non_nullable
                      as String,
            time: null == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                      as List<TimeInfo>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeatherElementImplCopyWith<$Res>
    implements $WeatherElementCopyWith<$Res> {
  factory _$$WeatherElementImplCopyWith(
    _$WeatherElementImpl value,
    $Res Function(_$WeatherElementImpl) then,
  ) = __$$WeatherElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String elementName, List<TimeInfo> time});
}

/// @nodoc
class __$$WeatherElementImplCopyWithImpl<$Res>
    extends _$WeatherElementCopyWithImpl<$Res, _$WeatherElementImpl>
    implements _$$WeatherElementImplCopyWith<$Res> {
  __$$WeatherElementImplCopyWithImpl(
    _$WeatherElementImpl _value,
    $Res Function(_$WeatherElementImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? elementName = null, Object? time = null}) {
    return _then(
      _$WeatherElementImpl(
        elementName: null == elementName
            ? _value.elementName
            : elementName // ignore: cast_nullable_to_non_nullable
                  as String,
        time: null == time
            ? _value._time
            : time // ignore: cast_nullable_to_non_nullable
                  as List<TimeInfo>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherElementImpl implements _WeatherElement {
  const _$WeatherElementImpl({
    required this.elementName,
    required final List<TimeInfo> time,
  }) : _time = time;

  factory _$WeatherElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherElementImplFromJson(json);

  @override
  final String elementName;
  final List<TimeInfo> _time;
  @override
  List<TimeInfo> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  @override
  String toString() {
    return 'WeatherElement(elementName: $elementName, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherElementImpl &&
            (identical(other.elementName, elementName) ||
                other.elementName == elementName) &&
            const DeepCollectionEquality().equals(other._time, _time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    elementName,
    const DeepCollectionEquality().hash(_time),
  );

  /// Create a copy of WeatherElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherElementImplCopyWith<_$WeatherElementImpl> get copyWith =>
      __$$WeatherElementImplCopyWithImpl<_$WeatherElementImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherElementImplToJson(this);
  }
}

abstract class _WeatherElement implements WeatherElement {
  const factory _WeatherElement({
    required final String elementName,
    required final List<TimeInfo> time,
  }) = _$WeatherElementImpl;

  factory _WeatherElement.fromJson(Map<String, dynamic> json) =
      _$WeatherElementImpl.fromJson;

  @override
  String get elementName;
  @override
  List<TimeInfo> get time;

  /// Create a copy of WeatherElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherElementImplCopyWith<_$WeatherElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeInfo _$TimeInfoFromJson(Map<String, dynamic> json) {
  return _TimeInfo.fromJson(json);
}

/// @nodoc
mixin _$TimeInfo {
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  Parameter get parameter => throw _privateConstructorUsedError;

  /// Serializes this TimeInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeInfoCopyWith<TimeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeInfoCopyWith<$Res> {
  factory $TimeInfoCopyWith(TimeInfo value, $Res Function(TimeInfo) then) =
      _$TimeInfoCopyWithImpl<$Res, TimeInfo>;
  @useResult
  $Res call({String? startTime, String? endTime, Parameter parameter});

  $ParameterCopyWith<$Res> get parameter;
}

/// @nodoc
class _$TimeInfoCopyWithImpl<$Res, $Val extends TimeInfo>
    implements $TimeInfoCopyWith<$Res> {
  _$TimeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? parameter = null,
  }) {
    return _then(
      _value.copyWith(
            startTime: freezed == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            endTime: freezed == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            parameter: null == parameter
                ? _value.parameter
                : parameter // ignore: cast_nullable_to_non_nullable
                      as Parameter,
          )
          as $Val,
    );
  }

  /// Create a copy of TimeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParameterCopyWith<$Res> get parameter {
    return $ParameterCopyWith<$Res>(_value.parameter, (value) {
      return _then(_value.copyWith(parameter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimeInfoImplCopyWith<$Res>
    implements $TimeInfoCopyWith<$Res> {
  factory _$$TimeInfoImplCopyWith(
    _$TimeInfoImpl value,
    $Res Function(_$TimeInfoImpl) then,
  ) = __$$TimeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? startTime, String? endTime, Parameter parameter});

  @override
  $ParameterCopyWith<$Res> get parameter;
}

/// @nodoc
class __$$TimeInfoImplCopyWithImpl<$Res>
    extends _$TimeInfoCopyWithImpl<$Res, _$TimeInfoImpl>
    implements _$$TimeInfoImplCopyWith<$Res> {
  __$$TimeInfoImplCopyWithImpl(
    _$TimeInfoImpl _value,
    $Res Function(_$TimeInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TimeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? parameter = null,
  }) {
    return _then(
      _$TimeInfoImpl(
        startTime: freezed == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        endTime: freezed == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        parameter: null == parameter
            ? _value.parameter
            : parameter // ignore: cast_nullable_to_non_nullable
                  as Parameter,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeInfoImpl implements _TimeInfo {
  const _$TimeInfoImpl({this.startTime, this.endTime, required this.parameter});

  factory _$TimeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeInfoImplFromJson(json);

  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final Parameter parameter;

  @override
  String toString() {
    return 'TimeInfo(startTime: $startTime, endTime: $endTime, parameter: $parameter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeInfoImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.parameter, parameter) ||
                other.parameter == parameter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime, parameter);

  /// Create a copy of TimeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeInfoImplCopyWith<_$TimeInfoImpl> get copyWith =>
      __$$TimeInfoImplCopyWithImpl<_$TimeInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeInfoImplToJson(this);
  }
}

abstract class _TimeInfo implements TimeInfo {
  const factory _TimeInfo({
    final String? startTime,
    final String? endTime,
    required final Parameter parameter,
  }) = _$TimeInfoImpl;

  factory _TimeInfo.fromJson(Map<String, dynamic> json) =
      _$TimeInfoImpl.fromJson;

  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  Parameter get parameter;

  /// Create a copy of TimeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeInfoImplCopyWith<_$TimeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Parameter _$ParameterFromJson(Map<String, dynamic> json) {
  return _Parameter.fromJson(json);
}

/// @nodoc
mixin _$Parameter {
  String get parameterName => throw _privateConstructorUsedError;
  String? get parameterValue => throw _privateConstructorUsedError;
  String? get parameterUnit => throw _privateConstructorUsedError;

  /// Serializes this Parameter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Parameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParameterCopyWith<Parameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParameterCopyWith<$Res> {
  factory $ParameterCopyWith(Parameter value, $Res Function(Parameter) then) =
      _$ParameterCopyWithImpl<$Res, Parameter>;
  @useResult
  $Res call({
    String parameterName,
    String? parameterValue,
    String? parameterUnit,
  });
}

/// @nodoc
class _$ParameterCopyWithImpl<$Res, $Val extends Parameter>
    implements $ParameterCopyWith<$Res> {
  _$ParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Parameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameterName = null,
    Object? parameterValue = freezed,
    Object? parameterUnit = freezed,
  }) {
    return _then(
      _value.copyWith(
            parameterName: null == parameterName
                ? _value.parameterName
                : parameterName // ignore: cast_nullable_to_non_nullable
                      as String,
            parameterValue: freezed == parameterValue
                ? _value.parameterValue
                : parameterValue // ignore: cast_nullable_to_non_nullable
                      as String?,
            parameterUnit: freezed == parameterUnit
                ? _value.parameterUnit
                : parameterUnit // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ParameterImplCopyWith<$Res>
    implements $ParameterCopyWith<$Res> {
  factory _$$ParameterImplCopyWith(
    _$ParameterImpl value,
    $Res Function(_$ParameterImpl) then,
  ) = __$$ParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String parameterName,
    String? parameterValue,
    String? parameterUnit,
  });
}

/// @nodoc
class __$$ParameterImplCopyWithImpl<$Res>
    extends _$ParameterCopyWithImpl<$Res, _$ParameterImpl>
    implements _$$ParameterImplCopyWith<$Res> {
  __$$ParameterImplCopyWithImpl(
    _$ParameterImpl _value,
    $Res Function(_$ParameterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Parameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameterName = null,
    Object? parameterValue = freezed,
    Object? parameterUnit = freezed,
  }) {
    return _then(
      _$ParameterImpl(
        parameterName: null == parameterName
            ? _value.parameterName
            : parameterName // ignore: cast_nullable_to_non_nullable
                  as String,
        parameterValue: freezed == parameterValue
            ? _value.parameterValue
            : parameterValue // ignore: cast_nullable_to_non_nullable
                  as String?,
        parameterUnit: freezed == parameterUnit
            ? _value.parameterUnit
            : parameterUnit // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ParameterImpl implements _Parameter {
  const _$ParameterImpl({
    required this.parameterName,
    this.parameterValue,
    this.parameterUnit,
  });

  factory _$ParameterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParameterImplFromJson(json);

  @override
  final String parameterName;
  @override
  final String? parameterValue;
  @override
  final String? parameterUnit;

  @override
  String toString() {
    return 'Parameter(parameterName: $parameterName, parameterValue: $parameterValue, parameterUnit: $parameterUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParameterImpl &&
            (identical(other.parameterName, parameterName) ||
                other.parameterName == parameterName) &&
            (identical(other.parameterValue, parameterValue) ||
                other.parameterValue == parameterValue) &&
            (identical(other.parameterUnit, parameterUnit) ||
                other.parameterUnit == parameterUnit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, parameterName, parameterValue, parameterUnit);

  /// Create a copy of Parameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParameterImplCopyWith<_$ParameterImpl> get copyWith =>
      __$$ParameterImplCopyWithImpl<_$ParameterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParameterImplToJson(this);
  }
}

abstract class _Parameter implements Parameter {
  const factory _Parameter({
    required final String parameterName,
    final String? parameterValue,
    final String? parameterUnit,
  }) = _$ParameterImpl;

  factory _Parameter.fromJson(Map<String, dynamic> json) =
      _$ParameterImpl.fromJson;

  @override
  String get parameterName;
  @override
  String? get parameterValue;
  @override
  String? get parameterUnit;

  /// Create a copy of Parameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParameterImplCopyWith<_$ParameterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
