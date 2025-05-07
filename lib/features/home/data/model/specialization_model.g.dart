// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationResponse _$SpecializationResponseFromJson(
  Map<String, dynamic> json,
) => SpecializationResponse(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  doctors:
      (json['doctors'] as List<dynamic>?)
          ?.map(
            (e) =>
                e == null ? null : Doctor.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$SpecializationResponseToJson(
  SpecializationResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'doctors': instance.doctors,
};

Doctor _$DoctorFromJson(Map<String, dynamic> json) => Doctor(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  photo: json['photo'] as String?,
  gender: json['gender'] as String?,
  address: json['address'] as String?,
  degree: json['degree'] as String?,
  appointPrice: (json['appoint_price'] as num?)?.toDouble(),
);

Map<String, dynamic> _$DoctorToJson(Doctor instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'photo': instance.photo,
  'gender': instance.gender,
  'address': instance.address,
  'degree': instance.degree,
  'appoint_price': instance.appointPrice,
};

Specialization _$SpecializationFromJson(Map<String, dynamic> json) =>
    Specialization(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SpecializationToJson(Specialization instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

City _$CityFromJson(Map<String, dynamic> json) => City(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  governrate:
      json['governrate'] == null
          ? null
          : Governrate.fromJson(json['governrate'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'governrate': instance.governrate,
};

Governrate _$GovernrateFromJson(Map<String, dynamic> json) => Governrate(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$GovernrateToJson(Governrate instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
