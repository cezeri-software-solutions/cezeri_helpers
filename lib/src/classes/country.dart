// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable(explicitToJson: true)
class Country extends Equatable {
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

  static List<Country> countryList = [
    Country(id: '1', isoCode: 'AF', name: 'Afghanistan', nameEnglish: 'Afghanistan', dialCode: '+93'),
    Country(id: '2', isoCode: 'AL', name: 'Albanien', nameEnglish: 'Albania', dialCode: '+355'),
    Country(id: '3', isoCode: 'DZ', name: 'Algerien', nameEnglish: 'Algeria', dialCode: '+213'),
    Country(id: '4', isoCode: 'AS', name: 'Amerikanisch-Samoa', nameEnglish: 'American Samoa', dialCode: '+1-684'),
    Country(id: '5', isoCode: 'AD', name: 'Andorra', nameEnglish: 'Andorra', dialCode: '+376'),
    Country(id: '6', isoCode: 'AO', name: 'Angola', nameEnglish: 'Angola', dialCode: '+244'),
    Country(id: '7', isoCode: 'AI', name: 'Anguilla', nameEnglish: 'Anguilla', dialCode: '+1-264'),
    Country(id: '8', isoCode: 'AQ', name: 'Antarktis', nameEnglish: 'Antarctica', dialCode: ''),
    Country(id: '9', isoCode: 'AG', name: 'Antigua und Barbuda', nameEnglish: 'Antigua and Barbuda', dialCode: '+1-268'),
    Country(id: '10', isoCode: 'AR', name: 'Argentinien', nameEnglish: 'Argentina', dialCode: '+54'),
    Country(id: '11', isoCode: 'AM', name: 'Armenien', nameEnglish: 'Armenia', dialCode: '+374'),
    Country(id: '12', isoCode: 'AW', name: 'Aruba', nameEnglish: 'Aruba', dialCode: '+297'),
    Country(id: '13', isoCode: 'AU', name: 'Australien', nameEnglish: 'Australia', dialCode: '+61'),
    Country(id: '14', isoCode: 'AT', name: 'Österreich', nameEnglish: 'Austria', dialCode: '+43'),
    Country(id: '15', isoCode: 'AZ', name: 'Aserbaidschan', nameEnglish: 'Azerbaijan', dialCode: '+994'),
    Country(id: '16', isoCode: 'BS', name: 'Bahamas', nameEnglish: 'Bahamas', dialCode: '+1-242'),
    Country(id: '17', isoCode: 'BH', name: 'Bahrain', nameEnglish: 'Bahrain', dialCode: '+973'),
    Country(id: '18', isoCode: 'BD', name: 'Bangladesch', nameEnglish: 'Bangladesh', dialCode: '+880'),
    Country(id: '19', isoCode: 'BB', name: 'Barbados', nameEnglish: 'Barbados', dialCode: '+1-246'),
    Country(id: '20', isoCode: 'BY', name: 'Weißrussland', nameEnglish: 'Belarus', dialCode: '+375'),
    Country(id: '21', isoCode: 'BE', name: 'Belgien', nameEnglish: 'Belgium', dialCode: '+32'),
    Country(id: '22', isoCode: 'BZ', name: 'Belize', nameEnglish: 'Belize', dialCode: '+501'),
    Country(id: '23', isoCode: 'BJ', name: 'Benin', nameEnglish: 'Benin', dialCode: '+229'),
    Country(id: '24', isoCode: 'BM', name: 'Bermuda', nameEnglish: 'Bermuda', dialCode: '+1-441'),
    Country(id: '25', isoCode: 'BT', name: 'Bhutan', nameEnglish: 'Bhutan', dialCode: '+975'),
    Country(id: '26', isoCode: 'BO', name: 'Bolivien', nameEnglish: 'Bolivia', dialCode: '+591'),
    Country(id: '27', isoCode: 'BA', name: 'Bosnien und Herzegowina', nameEnglish: 'Bosnia and Herzegovina', dialCode: '+387'),
    Country(id: '28', isoCode: 'BW', name: 'Botswana', nameEnglish: 'Botswana', dialCode: '+267'),
    Country(id: '29', isoCode: 'BR', name: 'Brasilien', nameEnglish: 'Brazil', dialCode: '+55'),
    Country(
        id: '30', isoCode: 'IO', name: 'Britisches Territorium im Indischen Ozean', nameEnglish: 'British Indian Ocean Territory', dialCode: '+246'),
    Country(id: '31', isoCode: 'VG', name: 'Britische Jungferninseln', nameEnglish: 'British Virgin Islands', dialCode: '+1-284'),
    Country(id: '32', isoCode: 'BN', name: 'Brunei', nameEnglish: 'Brunei', dialCode: '+673'),
    Country(id: '33', isoCode: 'BG', name: 'Bulgarien', nameEnglish: 'Bulgaria', dialCode: '+359'),
    Country(id: '34', isoCode: 'BF', name: 'Burkina Faso', nameEnglish: 'Burkina Faso', dialCode: '+226'),
    Country(id: '35', isoCode: 'BI', name: 'Burundi', nameEnglish: 'Burundi', dialCode: '+257'),
    Country(id: '36', isoCode: 'KH', name: 'Kambodscha', nameEnglish: 'Cambodia', dialCode: '+855'),
    Country(id: '37', isoCode: 'CM', name: 'Kamerun', nameEnglish: 'Cameroon', dialCode: '+237'),
    Country(id: '38', isoCode: 'CA', name: 'Kanada', nameEnglish: 'Canada', dialCode: '+1'),
    Country(id: '39', isoCode: 'CV', name: 'Kap Verde', nameEnglish: 'Cape Verde', dialCode: '+238'),
    Country(id: '40', isoCode: 'KY', name: 'Kaimaninseln', nameEnglish: 'Cayman Islands', dialCode: '+1-345'),
    Country(id: '41', isoCode: 'CF', name: 'Zentralafrikanische Republik', nameEnglish: 'Central African Republic', dialCode: '+236'),
    Country(id: '42', isoCode: 'TD', name: 'Tschad', nameEnglish: 'Chad', dialCode: '+235'),
    Country(id: '43', isoCode: 'CL', name: 'Chile', nameEnglish: 'Chile', dialCode: '+56'),
    Country(id: '44', isoCode: 'CN', name: 'China', nameEnglish: 'China', dialCode: '+86'),
    Country(id: '45', isoCode: 'CX', name: 'Weihnachtsinsel', nameEnglish: 'Christmas Island', dialCode: '+61'),
    Country(id: '46', isoCode: 'CC', name: 'Kokosinseln', nameEnglish: 'Cocos Islands', dialCode: '+61'),
    Country(id: '47', isoCode: 'CO', name: 'Kolumbien', nameEnglish: 'Colombia', dialCode: '+57'),
    Country(id: '48', isoCode: 'KM', name: 'Komoren', nameEnglish: 'Comoros', dialCode: '+269'),
    Country(id: '49', isoCode: 'CK', name: 'Cookinseln', nameEnglish: 'Cook Islands', dialCode: '+682'),
    Country(id: '50', isoCode: 'CR', name: 'Costa Rica', nameEnglish: 'Costa Rica', dialCode: '+506'),
    Country(id: '51', isoCode: 'HR', name: 'Kroatien', nameEnglish: 'Croatia', dialCode: '+385'),
    Country(id: '52', isoCode: 'CU', name: 'Kuba', nameEnglish: 'Cuba', dialCode: '+53'),
    Country(id: '53', isoCode: 'CW', name: 'Curaçao', nameEnglish: 'Curacao', dialCode: '+599'),
    Country(id: '54', isoCode: 'CY', name: 'Zypern', nameEnglish: 'Cyprus', dialCode: '+357'),
    Country(id: '55', isoCode: 'CZ', name: 'Tschechien', nameEnglish: 'Czech Republic', dialCode: '+420'),
    Country(id: '56', isoCode: 'CD', name: 'Demokratische Republik Kongo', nameEnglish: 'Democratic Republic of the Congo', dialCode: '+243'),
    Country(id: '57', isoCode: 'DK', name: 'Dänemark', nameEnglish: 'Denmark', dialCode: '+45'),
    Country(id: '58', isoCode: 'DJ', name: 'Dschibuti', nameEnglish: 'Djibouti', dialCode: '+253'),
    Country(id: '59', isoCode: 'DM', name: 'Dominica', nameEnglish: 'Dominica', dialCode: '+1-767'),
    Country(id: '60', isoCode: 'DO', name: 'Dominikanische Republik', nameEnglish: 'Dominican Republic', dialCode: '+1-809, 1-829, 1-849'),
    Country(id: '61', isoCode: 'EC', name: 'Ecuador', nameEnglish: 'Ecuador', dialCode: '+593'),
    Country(id: '62', isoCode: 'EG', name: 'Ägypten', nameEnglish: 'Egypt', dialCode: '+20'),
    Country(id: '63', isoCode: 'SV', name: 'El Salvador', nameEnglish: 'El Salvador', dialCode: '+503'),
    Country(id: '64', isoCode: 'GQ', name: 'Äquatorialguinea', nameEnglish: 'Equatorial Guinea', dialCode: '+240'),
    Country(id: '65', isoCode: 'ER', name: 'Eritrea', nameEnglish: 'Eritrea', dialCode: '+291'),
    Country(id: '66', isoCode: 'EE', name: 'Estland', nameEnglish: 'Estonia', dialCode: '+372'),
    Country(id: '67', isoCode: 'ET', name: 'Äthiopien', nameEnglish: 'Ethiopia', dialCode: '+251'),
    Country(id: '68', isoCode: 'FK', name: 'Falklandinseln', nameEnglish: 'Falkland Islands', dialCode: '+500'),
    Country(id: '69', isoCode: 'FO', name: 'Färöer', nameEnglish: 'Faroe Islands', dialCode: '+298'),
    Country(id: '70', isoCode: 'FJ', name: 'Fidschi', nameEnglish: 'Fiji', dialCode: '+679'),
    Country(id: '71', isoCode: 'FI', name: 'Finnland', nameEnglish: 'Finland', dialCode: '+358'),
    Country(id: '72', isoCode: 'FR', name: 'Frankreich', nameEnglish: 'France', dialCode: '+33'),
    Country(id: '73', isoCode: 'PF', name: 'Französisch-Polynesien', nameEnglish: 'French Polynesia', dialCode: '+689'),
    Country(id: '74', isoCode: 'GA', name: 'Gabun', nameEnglish: 'Gabon', dialCode: '+241'),
    Country(id: '75', isoCode: 'GM', name: 'Gambia', nameEnglish: 'Gambia', dialCode: '+220'),
    Country(id: '76', isoCode: 'GE', name: 'Georgien', nameEnglish: 'Georgia', dialCode: '+995'),
    Country(id: '77', isoCode: 'DE', name: 'Deutschland', nameEnglish: 'Germany', dialCode: '+49'),
    Country(id: '78', isoCode: 'GH', name: 'Ghana', nameEnglish: 'Ghana', dialCode: '+233'),
    Country(id: '79', isoCode: 'GI', name: 'Gibraltar', nameEnglish: 'Gibraltar', dialCode: '+350'),
    Country(id: '80', isoCode: 'GR', name: 'Griechenland', nameEnglish: 'Greece', dialCode: '+30'),
    Country(id: '81', isoCode: 'GL', name: 'Grönland', nameEnglish: 'Greenland', dialCode: '+299'),
    Country(id: '82', isoCode: 'GD', name: 'Grenada', nameEnglish: 'Grenada', dialCode: '+1-473'),
    Country(id: '83', isoCode: 'GU', name: 'Guam', nameEnglish: 'Guam', dialCode: '+1-671'),
    Country(id: '84', isoCode: 'GT', name: 'Guatemala', nameEnglish: 'Guatemala', dialCode: '+502'),
    Country(id: '85', isoCode: 'GG', name: 'Guernsey', nameEnglish: 'Guernsey', dialCode: '+44-1481'),
    Country(id: '86', isoCode: 'GN', name: 'Guinea', nameEnglish: 'Guinea', dialCode: '+224'),
    Country(id: '87', isoCode: 'GW', name: 'Guinea-Bissau', nameEnglish: 'Guinea-Bissau', dialCode: '+245'),
    Country(id: '88', isoCode: 'GY', name: 'Guyana', nameEnglish: 'Guyana', dialCode: '+592'),
    Country(id: '89', isoCode: 'HT', name: 'Haiti', nameEnglish: 'Haiti', dialCode: '+509'),
    Country(id: '90', isoCode: 'HN', name: 'Honduras', nameEnglish: 'Honduras', dialCode: '+504'),
    Country(id: '91', isoCode: 'HK', name: 'Hongkong', nameEnglish: 'Hong Kong', dialCode: '+852'),
    Country(id: '92', isoCode: 'HU', name: 'Ungarn', nameEnglish: 'Hungary', dialCode: '+36'),
    Country(id: '93', isoCode: 'IS', name: 'Island', nameEnglish: 'Iceland', dialCode: '+354'),
    Country(id: '94', isoCode: 'IN', name: 'Indien', nameEnglish: 'India', dialCode: '+91'),
    Country(id: '95', isoCode: 'ID', name: 'Indonesien', nameEnglish: 'Indonesia', dialCode: '+62'),
    Country(id: '96', isoCode: 'IR', name: 'Iran', nameEnglish: 'Iran', dialCode: '+98'),
    Country(id: '97', isoCode: 'IQ', name: 'Irak', nameEnglish: 'Iraq', dialCode: '+964'),
    Country(id: '98', isoCode: 'IE', name: 'Irland', nameEnglish: 'Ireland', dialCode: '+353'),
    Country(id: '99', isoCode: 'IM', name: 'Isle of Man', nameEnglish: 'Isle of Man', dialCode: '+44-1624'),
    Country(id: '100', isoCode: 'IL', name: 'Israel', nameEnglish: 'Israel', dialCode: '+972'),
    Country(id: '101', isoCode: 'IT', name: 'Italien', nameEnglish: 'Italy', dialCode: '+39'),
    Country(id: '102', isoCode: 'CI', name: 'Elfenbeinküste', nameEnglish: 'Ivory Coast', dialCode: '+225'),
    Country(id: '103', isoCode: 'JM', name: 'Jamaika', nameEnglish: 'Jamaica', dialCode: '+1-876'),
    Country(id: '104', isoCode: 'JP', name: 'Japan', nameEnglish: 'Japan', dialCode: '+81'),
    Country(id: '105', isoCode: 'JE', name: 'Jersey', nameEnglish: 'Jersey', dialCode: '+44-1534'),
    Country(id: '106', isoCode: 'JO', name: 'Jordanien', nameEnglish: 'Jordan', dialCode: '+962'),
    Country(id: '107', isoCode: 'KZ', name: 'Kasachstan', nameEnglish: 'Kazakhstan', dialCode: '+7'),
    Country(id: '108', isoCode: 'KE', name: 'Kenia', nameEnglish: 'Kenya', dialCode: '+254'),
    Country(id: '109', isoCode: 'KI', name: 'Kiribati', nameEnglish: 'Kiribati', dialCode: '+686'),
    Country(id: '110', isoCode: 'XK', name: 'Kosovo', nameEnglish: 'Kosovo', dialCode: '+383'),
    Country(id: '111', isoCode: 'KW', name: 'Kuwait', nameEnglish: 'Kuwait', dialCode: '+965'),
    Country(id: '112', isoCode: 'KG', name: 'Kirgisistan', nameEnglish: 'Kyrgyzstan', dialCode: '+996'),
    Country(id: '113', isoCode: 'LA', name: 'Laos', nameEnglish: 'Laos', dialCode: '+856'),
    Country(id: '114', isoCode: 'LV', name: 'Lettland', nameEnglish: 'Latvia', dialCode: '+371'),
    Country(id: '115', isoCode: 'LB', name: 'Libanon', nameEnglish: 'Lebanon', dialCode: '+961'),
    Country(id: '116', isoCode: 'LS', name: 'Lesotho', nameEnglish: 'Lesotho', dialCode: '+266'),
    Country(id: '117', isoCode: 'LR', name: 'Liberia', nameEnglish: 'Liberia', dialCode: '+231'),
    Country(id: '118', isoCode: 'LY', name: 'Libyen', nameEnglish: 'Libya', dialCode: '+218'),
    Country(id: '119', isoCode: 'LI', name: 'Liechtenstein', nameEnglish: 'Liechtenstein', dialCode: '+423'),
    Country(id: '120', isoCode: 'LT', name: 'Litauen', nameEnglish: 'Lithuania', dialCode: '+370'),
    Country(id: '121', isoCode: 'LU', name: 'Luxemburg', nameEnglish: 'Luxembourg', dialCode: '+352'),
    Country(id: '122', isoCode: 'MO', name: 'Macao', nameEnglish: 'Macao', dialCode: '+853'),
    Country(id: '123', isoCode: 'MK', name: 'Mazedonien', nameEnglish: 'Macedonia', dialCode: '+389'),
    Country(id: '124', isoCode: 'MG', name: 'Madagaskar', nameEnglish: 'Madagascar', dialCode: '+261'),
    Country(id: '125', isoCode: 'MW', name: 'Malawi', nameEnglish: 'Malawi', dialCode: '+265'),
    Country(id: '126', isoCode: 'MY', name: 'Malaysia', nameEnglish: 'Malaysia', dialCode: '+60'),
    Country(id: '127', isoCode: 'MV', name: 'Malediven', nameEnglish: 'Maldives', dialCode: '+960'),
    Country(id: '128', isoCode: 'ML', name: 'Mali', nameEnglish: 'Mali', dialCode: '+223'),
    Country(id: '129', isoCode: 'MT', name: 'Malta', nameEnglish: 'Malta', dialCode: '+356'),
    Country(id: '130', isoCode: 'MH', name: 'Marshallinseln', nameEnglish: 'Marshall Islands', dialCode: '+692'),
    Country(id: '131', isoCode: 'MQ', name: 'Martinique', nameEnglish: 'Martinique', dialCode: '+596'),
    Country(id: '132', isoCode: 'MR', name: 'Mauretanien', nameEnglish: 'Mauritania', dialCode: '+222'),
    Country(id: '133', isoCode: 'MU', name: 'Mauritius', nameEnglish: 'Mauritius', dialCode: '+230'),
    Country(id: '134', isoCode: 'YT', name: 'Mayotte', nameEnglish: 'Mayotte', dialCode: '+262'),
    Country(id: '135', isoCode: 'MX', name: 'Mexiko', nameEnglish: 'Mexico', dialCode: '+52'),
    Country(id: '136', isoCode: 'FM', name: 'Mikronesien', nameEnglish: 'Micronesia', dialCode: '+691'),
    Country(id: '137', isoCode: 'MD', name: 'Moldawien', nameEnglish: 'Moldova', dialCode: '+373'),
    Country(id: '138', isoCode: 'MC', name: 'Monaco', nameEnglish: 'Monaco', dialCode: '+377'),
    Country(id: '139', isoCode: 'MN', name: 'Mongolei', nameEnglish: 'Mongolia', dialCode: '+976'),
    Country(id: '140', isoCode: 'ME', name: 'Montenegro', nameEnglish: 'Montenegro', dialCode: '+382'),
    Country(id: '141', isoCode: 'MS', name: 'Montserrat', nameEnglish: 'Montserrat', dialCode: '+1-664'),
    Country(id: '142', isoCode: 'MA', name: 'Marokko', nameEnglish: 'Morocco', dialCode: '+212'),
    Country(id: '143', isoCode: 'MZ', name: 'Mosambik', nameEnglish: 'Mozambique', dialCode: '+258'),
    Country(id: '144', isoCode: 'MM', name: 'Myanmar', nameEnglish: 'Myanmar', dialCode: '+95'),
    Country(id: '145', isoCode: 'NA', name: 'Namibia', nameEnglish: 'Namibia', dialCode: '+264'),
    Country(id: '146', isoCode: 'NR', name: 'Nauru', nameEnglish: 'Nauru', dialCode: '+674'),
    Country(id: '147', isoCode: 'NP', name: 'Nepal', nameEnglish: 'Nepal', dialCode: '+977'),
    Country(id: '148', isoCode: 'NL', name: 'Niederlande', nameEnglish: 'Netherlands', dialCode: '+31'),
    Country(id: '149', isoCode: 'NC', name: 'Neukaledonien', nameEnglish: 'New Caledonia', dialCode: '+687'),
    Country(id: '150', isoCode: 'NZ', name: 'Neuseeland', nameEnglish: 'New Zealand', dialCode: '+64'),
    Country(id: '151', isoCode: 'NI', name: 'Nicaragua', nameEnglish: 'Nicaragua', dialCode: '+505'),
    Country(id: '152', isoCode: 'NE', name: 'Niger', nameEnglish: 'Niger', dialCode: '+227'),
    Country(id: '153', isoCode: 'NG', name: 'Nigeria', nameEnglish: 'Nigeria', dialCode: '+234'),
    Country(id: '154', isoCode: 'NU', name: 'Niue', nameEnglish: 'Niue', dialCode: '+683'),
    Country(id: '155', isoCode: 'NF', name: 'Norfolkinsel', nameEnglish: 'Norfolk Island', dialCode: '+672'),
    Country(id: '156', isoCode: 'KP', name: 'Nordkorea', nameEnglish: 'North Korea', dialCode: '+850'),
    Country(id: '157', isoCode: 'MP', name: 'Nördliche Marianen', nameEnglish: 'Northern Mariana Islands', dialCode: '+1-670'),
    Country(id: '158', isoCode: 'NO', name: 'Norwegen', nameEnglish: 'Norway', dialCode: '+47'),
    Country(id: '159', isoCode: 'OM', name: 'Oman', nameEnglish: 'Oman', dialCode: '+968'),
    Country(id: '160', isoCode: 'PK', name: 'Pakistan', nameEnglish: 'Pakistan', dialCode: '+92'),
    Country(id: '161', isoCode: 'PW', name: 'Palau', nameEnglish: 'Palau', dialCode: '+680'),
    Country(id: '162', isoCode: 'PS', name: 'Palästina', nameEnglish: 'Palestine', dialCode: '+970'),
    Country(id: '163', isoCode: 'PA', name: 'Panama', nameEnglish: 'Panama', dialCode: '+507'),
    Country(id: '164', isoCode: 'PG', name: 'Papua-Neuguinea', nameEnglish: 'Papua New Guinea', dialCode: '+675'),
    Country(id: '165', isoCode: 'PY', name: 'Paraguay', nameEnglish: 'Paraguay', dialCode: '+595'),
    Country(id: '166', isoCode: 'PE', name: 'Peru', nameEnglish: 'Peru', dialCode: '+51'),
    Country(id: '167', isoCode: 'PH', name: 'Philippinen', nameEnglish: 'Philippines', dialCode: '+63'),
    Country(id: '168', isoCode: 'PN', name: 'Pitcairninseln', nameEnglish: 'Pitcairn Islands', dialCode: '+64'),
    Country(id: '169', isoCode: 'PL', name: 'Polen', nameEnglish: 'Poland', dialCode: '+48'),
    Country(id: '170', isoCode: 'PT', name: 'Portugal', nameEnglish: 'Portugal', dialCode: '+351'),
    Country(id: '171', isoCode: 'PR', name: 'Puerto Rico', nameEnglish: 'Puerto Rico', dialCode: '+1-787, 1-939'),
    Country(id: '172', isoCode: 'QA', name: 'Katar', nameEnglish: 'Qatar', dialCode: '+974'),
    Country(id: '173', isoCode: 'CG', name: 'Republik Kongo', nameEnglish: 'Republic of the Congo', dialCode: '+242'),
    Country(id: '174', isoCode: 'RE', name: 'Réunion', nameEnglish: 'Reunion', dialCode: '+262'),
    Country(id: '175', isoCode: 'RO', name: 'Rumänien', nameEnglish: 'Romania', dialCode: '+40'),
    Country(id: '176', isoCode: 'RU', name: 'Russland', nameEnglish: 'Russia', dialCode: '+7'),
    Country(id: '177', isoCode: 'RW', name: 'Ruanda', nameEnglish: 'Rwanda', dialCode: '+250'),
    Country(id: '178', isoCode: 'BL', name: 'Saint-Barthélemy', nameEnglish: 'Saint Barthelemy', dialCode: '+590'),
    Country(id: '179', isoCode: 'SH', name: 'St. Helena', nameEnglish: 'Saint Helena', dialCode: '+290'),
    Country(id: '180', isoCode: 'KN', name: 'St. Kitts und Nevis', nameEnglish: 'Saint Kitts and Nevis', dialCode: '+1-869'),
    Country(id: '181', isoCode: 'LC', name: 'St. Lucia', nameEnglish: 'Saint Lucia', dialCode: '+1-758'),
    Country(id: '182', isoCode: 'MF', name: 'Saint-Martin', nameEnglish: 'Saint Martin', dialCode: '+590'),
    Country(id: '183', isoCode: 'PM', name: 'St. Pierre und Miquelon', nameEnglish: 'Saint Pierre and Miquelon', dialCode: '+508'),
    Country(id: '184', isoCode: 'VC', name: 'St. Vincent und die Grenadinen', nameEnglish: 'Saint Vincent and the Grenadines', dialCode: '+1-784'),
    Country(id: '185', isoCode: 'WS', name: 'Samoa', nameEnglish: 'Samoa', dialCode: '+685'),
    Country(id: '186', isoCode: 'SM', name: 'San Marino', nameEnglish: 'San Marino', dialCode: '+378'),
    Country(id: '187', isoCode: 'ST', name: 'São Tomé und Príncipe', nameEnglish: 'Sao Tome and Principe', dialCode: '+239'),
    Country(id: '188', isoCode: 'SA', name: 'Saudi-Arabien', nameEnglish: 'Saudi Arabia', dialCode: '+966'),
    Country(id: '189', isoCode: 'SN', name: 'Senegal', nameEnglish: 'Senegal', dialCode: '+221'),
    Country(id: '190', isoCode: 'RS', name: 'Serbien', nameEnglish: 'Serbia', dialCode: '+381'),
    Country(id: '191', isoCode: 'SC', name: 'Seychellen', nameEnglish: 'Seychelles', dialCode: '+248'),
    Country(id: '192', isoCode: 'SL', name: 'Sierra Leone', nameEnglish: 'Sierra Leone', dialCode: '+232'),
    Country(id: '193', isoCode: 'SG', name: 'Singapur', nameEnglish: 'Singapore', dialCode: '+65'),
    Country(id: '194', isoCode: 'SX', name: 'Sint Maarten', nameEnglish: 'Sint Maarten', dialCode: '+1-721'),
    Country(id: '195', isoCode: 'SK', name: 'Slowakei', nameEnglish: 'Slovakia', dialCode: '+421'),
    Country(id: '196', isoCode: 'SI', name: 'Slowenien', nameEnglish: 'Slovenia', dialCode: '+386'),
    Country(id: '197', isoCode: 'SB', name: 'Salomonen', nameEnglish: 'Solomon Islands', dialCode: '+677'),
    Country(id: '198', isoCode: 'SO', name: 'Somalia', nameEnglish: 'Somalia', dialCode: '+252'),
    Country(id: '199', isoCode: 'ZA', name: 'Südafrika', nameEnglish: 'South Africa', dialCode: '+27'),
    Country(
        id: '200',
        isoCode: 'GS',
        name: 'Südgeorgien und die Südlichen Sandwichinseln',
        nameEnglish: 'South Georgia and the South Sandwich Islands',
        dialCode: '+500'),
    Country(id: '201', isoCode: 'KR', name: 'Südkorea', nameEnglish: 'South Korea', dialCode: '+82'),
    Country(id: '202', isoCode: 'SS', name: 'Südsudan', nameEnglish: 'South Sudan', dialCode: '+211'),
    Country(id: '203', isoCode: 'ES', name: 'Spanien', nameEnglish: 'Spain', dialCode: '+34'),
    Country(id: '204', isoCode: 'LK', name: 'Sri Lanka', nameEnglish: 'Sri Lanka', dialCode: '+94'),
    Country(id: '205', isoCode: 'SD', name: 'Sudan', nameEnglish: 'Sudan', dialCode: '+249'),
    Country(id: '206', isoCode: 'SR', name: 'Suriname', nameEnglish: 'Suriname', dialCode: '+597'),
    Country(id: '207', isoCode: 'SJ', name: 'Svalbard und Jan Mayen', nameEnglish: 'Svalbard and Jan Mayen', dialCode: '+47'),
    Country(id: '208', isoCode: 'SZ', name: 'Swasiland', nameEnglish: 'Eswatini', dialCode: '+268'),
    Country(id: '209', isoCode: 'SE', name: 'Schweden', nameEnglish: 'Sweden', dialCode: '+46'),
    Country(id: '210', isoCode: 'CH', name: 'Schweiz', nameEnglish: 'Switzerland', dialCode: '+41'),
    Country(id: '211', isoCode: 'SY', name: 'Syrien', nameEnglish: 'Syria', dialCode: '+963'),
    Country(id: '212', isoCode: 'TW', name: 'Taiwan', nameEnglish: 'Taiwan', dialCode: '+886'),
    Country(id: '213', isoCode: 'TJ', name: 'Tadschikistan', nameEnglish: 'Tajikistan', dialCode: '+992'),
    Country(id: '214', isoCode: 'TZ', name: 'Tansania', nameEnglish: 'Tanzania', dialCode: '+255'),
    Country(id: '215', isoCode: 'TH', name: 'Thailand', nameEnglish: 'Thailand', dialCode: '+66'),
    Country(id: '216', isoCode: 'TL', name: 'Timor-Leste', nameEnglish: 'Timor-Leste', dialCode: '+670'),
    Country(id: '217', isoCode: 'TG', name: 'Togo', nameEnglish: 'Togo', dialCode: '+228'),
    Country(id: '218', isoCode: 'TK', name: 'Tokelau', nameEnglish: 'Tokelau', dialCode: '+690'),
    Country(id: '219', isoCode: 'TO', name: 'Tonga', nameEnglish: 'Tonga', dialCode: '+676'),
    Country(id: '220', isoCode: 'TT', name: 'Trinidad und Tobago', nameEnglish: 'Trinidad and Tobago', dialCode: '+1-868'),
    Country(id: '221', isoCode: 'TN', name: 'Tunesien', nameEnglish: 'Tunisia', dialCode: '+216'),
    Country(id: '222', isoCode: 'TR', name: 'Türkei', nameEnglish: 'Turkey', dialCode: '+90'),
    Country(id: '223', isoCode: 'TM', name: 'Turkmenistan', nameEnglish: 'Turkmenistan', dialCode: '+993'),
    Country(id: '224', isoCode: 'TC', name: 'Turks- und Caicosinseln', nameEnglish: 'Turks and Caicos Islands', dialCode: '+1-649'),
    Country(id: '225', isoCode: 'TV', name: 'Tuvalu', nameEnglish: 'Tuvalu', dialCode: '+688'),
    Country(id: '226', isoCode: 'UG', name: 'Uganda', nameEnglish: 'Uganda', dialCode: '+256'),
    Country(id: '227', isoCode: 'UA', name: 'Ukraine', nameEnglish: 'Ukraine', dialCode: '+380'),
    Country(id: '228', isoCode: 'AE', name: 'Vereinigte Arabische Emirate', nameEnglish: 'United Arab Emirates', dialCode: '+971'),
    Country(id: '229', isoCode: 'GB', name: 'Vereinigtes Königreich', nameEnglish: 'United Kingdom', dialCode: '+44'),
    Country(id: '230', isoCode: 'US', name: 'Vereinigte Staaten', nameEnglish: 'United States', dialCode: '+1'),
    Country(
        id: '231',
        isoCode: 'UM',
        name: 'Kleinere Inselbesitzungen der Vereinigten Staaten',
        nameEnglish: 'United States Minor Outlying Islands',
        dialCode: '+1'),
    Country(id: '232', isoCode: 'UY', name: 'Uruguay', nameEnglish: 'Uruguay', dialCode: '+598'),
    Country(id: '233', isoCode: 'UZ', name: 'Usbekistan', nameEnglish: 'Uzbekistan', dialCode: '+998'),
    Country(id: '234', isoCode: 'VU', name: 'Vanuatu', nameEnglish: 'Vanuatu', dialCode: '+678'),
    Country(id: '235', isoCode: 'VA', name: 'Vatikanstadt', nameEnglish: 'Vatican City', dialCode: '+39-06'),
    Country(id: '236', isoCode: 'VE', name: 'Venezuela', nameEnglish: 'Venezuela', dialCode: '+58'),
    Country(id: '237', isoCode: 'VN', name: 'Vietnam', nameEnglish: 'Vietnam', dialCode: '+84'),
    Country(id: '238', isoCode: 'VG', name: 'Britische Jungferninseln', nameEnglish: 'British Virgin Islands', dialCode: '+1-284'),
    Country(id: '239', isoCode: 'VI', name: 'Amerikanische Jungferninseln', nameEnglish: 'U.S. Virgin Islands', dialCode: '+1-340'),
    Country(id: '240', isoCode: 'WF', name: 'Wallis und Futuna', nameEnglish: 'Wallis and Futuna', dialCode: '+681'),
    Country(id: '241', isoCode: 'EH', name: 'Westsahara', nameEnglish: 'Western Sahara', dialCode: '+212'),
    Country(id: '242', isoCode: 'YE', name: 'Jemen', nameEnglish: 'Yemen', dialCode: '+967'),
    Country(id: '243', isoCode: 'ZM', name: 'Sambia', nameEnglish: 'Zambia', dialCode: '+260'),
    Country(id: '244', isoCode: 'ZW', name: 'Simbabwe', nameEnglish: 'Zimbabwe', dialCode: '+263'),
  ];

  @override
  List<Object> get props {
    return [id, isoCode, name, nameEnglish, dialCode];
  }
}
