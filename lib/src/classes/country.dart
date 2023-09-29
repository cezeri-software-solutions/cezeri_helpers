import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable(explicitToJson: true)
class Country {
  final String id;
  final String isoCode;
  final String name;
  final String nameEnglish;
  final String dialCode;
  final String flagUrl;

  Country({
    required this.id,
    required this.isoCode,
    required this.name,
    required this.nameEnglish,
    required this.dialCode,
  }) : flagUrl = 'https://flagcdn.com/w640/${isoCode.toLowerCase()}.png';

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);

  factory Country.empty() {
    return Country(
      id: '',
      isoCode: '',
      name: '',
      nameEnglish: '',
      dialCode: '',
    );
  }

  Country copyWith({
    String? id,
    String? isoCode,
    String? name,
    String? nameEnglish,
    String? dialCode,
  }) {
    return Country(
      id: id ?? this.id,
      isoCode: isoCode ?? this.isoCode,
      name: name ?? this.name,
      nameEnglish: nameEnglish ?? this.nameEnglish,
      dialCode: dialCode ?? this.dialCode,
    );
  }

  @override
  String toString() {
    return 'Country(id: $id, isoCode: $isoCode, name: $name, nameEnglish: $nameEnglish, dialCode: $dialCode, flagUrl: $flagUrl)';
  }
}
