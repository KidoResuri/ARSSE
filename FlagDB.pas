unit FlagDB;

interface
uses windows, StrUtils, SysUtils;
type
  TFlagDBLine = packed record
    endip: DWord;
    countryId: byte;
  end;

  TFlagDB = class
  private
    FDBFile: file of TFlagDBLine;
    size: dword;
    isOpen: boolean;
  public
    constructor Create(const FileName: string);
    destructor Destroy; override;
    function GetFlagId(const numb1: byte; const numb2: byte; const numb3: byte;
      const numb4: byte): byte;
  end;

  { TFlagDB }
//missing files: ap, aq, fx, a1, a2, o1, gg, im, je, bl, mf
const
  CountryCodes: array[0..253] of string = ('--', 'AP', 'EU', 'AD', 'AE', 'AF',
    'AG', 'AI', 'AL', 'AM', 'AN', 'AO', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AW',
    'AZ', 'BA', 'BB', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BM', 'BN',
    'BO', 'BR', 'BS', 'BT', 'BV', 'BW', 'BY', 'BZ', 'CA', 'CC', 'CD', 'CF',
    'CG', 'CH', 'CI', 'CK', 'CL', 'CM', 'CN', 'CO', 'CR', 'CU', 'CV', 'CX',
    'CY', 'CZ', 'DE', 'DJ', 'DK', 'DM', 'DO', 'DZ', 'EC', 'EE', 'EG', 'EH',
    'ER', 'ES', 'ET', 'FI', 'FJ', 'FK', 'FM', 'FO', 'FR', 'FX', 'GA', 'GB',
    'GD', 'GE', 'GF', 'GH', 'GI', 'GL', 'GM', 'GN', 'GP', 'GQ', 'GR', 'GS',
    'GT', 'GU', 'GW', 'GY', 'HK', 'HM', 'HN', 'HR', 'HT', 'HU', 'ID', 'IE',
    'IL', 'IN', 'IO', 'IQ', 'IR', 'IS', 'IT', 'JM', 'JO', 'JP', 'KE', 'KG',
    'KH', 'KI', 'KM', 'KN', 'KP', 'KR', 'KW', 'KY', 'KZ', 'LA', 'LB', 'LC',
    'LI', 'LK', 'LR', 'LS', 'LT', 'LU', 'LV', 'LY', 'MA', 'MC', 'MD', 'MG',
    'MH', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU',
    'MV', 'MW', 'MX', 'MY', 'MZ', 'NA', 'NC', 'NE', 'NF', 'NG', 'NI', 'NL',
    'NO', 'NP', 'NR', 'NU', 'NZ', 'OM', 'PA', 'PE', 'PF', 'PG', 'PH', 'PK',
    'PL', 'PM', 'PN', 'PR', 'PS', 'PT', 'PW', 'PY', 'QA', 'RE', 'RO', 'RU',
    'RW', 'SA', 'SB', 'SC', 'SD', 'SE', 'SG', 'SH', 'SI', 'SJ', 'SK', 'SL',
    'SM', 'SN', 'SO', 'SR', 'ST', 'SV', 'SY', 'SZ', 'TC', 'TD', 'TF', 'TG',
    'TH', 'TJ', 'TK', 'TM', 'TN', 'TO', 'TL', 'TR', 'TT', 'TV', 'TW', 'TZ',
    'UA', 'UG', 'UM', 'US', 'UY', 'UZ', 'VA', 'VC', 'VE', 'VG', 'VI', 'VN',
    'VU', 'WF', 'WS', 'YE', 'YT', 'RS', 'ZA', 'ZM', 'ME', 'ZW', 'A1', 'A2',
    'O1', 'AX', 'GG', 'IM', 'JE', 'BL', 'MF', 'RB');

  CountryNames: array[0..253] of string = (
    'The Questionmark State' + #13#10 + 'Yeah! They are famous for exporting Questionmarks.',
    'Asia/Pacific Region', 'Europe', 'Andorra', 'United Arab Emirates', 'Afghanistan',
    'Antigua and Barbuda', 'Anguilla', 'Albania', 'Armenia', 'Netherlands Antilles',
    'Angola', 'Antarctica', 'Argentina', 'American Samoa', 'Austria', 'Australia', 'Aruba',
    'Azerbaijan', 'Bosnia and Herzegovina', 'Barbados', 'Bangladesh', 'Belgium',
    'Burkina Faso', 'Bulgaria', 'Bahrain', 'Burundi', 'Benin', 'Bermuda',
    'Brunei Darussalam', 'Bolivia', 'Brazil', 'Bahamas', 'Bhutan', 'Bouvet Island',
    'Botswana', 'Belarus', 'Belize', 'Canada', 'Cocos (Keeling) Islands',
    'Congo, The Democratic Republic of the', 'Central African Republic', 'Congo',
    'Switzerland', 'Cote D''Ivoire', 'Cook Islands', 'Chile', 'Cameroon', 'China',
    'Colombia', 'Costa Rica', 'Cuba', 'Cape Verde', 'Christmas Island', 'Cyprus',
    'Czech Republic', 'Germany', 'Djibouti', 'Denmark', 'Dominica', 'Dominican Republic',
    'Algeria', 'Ecuador', 'Estonia', 'Egypt', 'Western Sahara', 'Eritrea', 'Spain',
    'Ethiopia', 'Finland', 'Fiji', 'Falkland Islands (Malvinas)',
    'Micronesia, Federated States of', 'Faroe Islands', 'France', 'France, Metropolitan',
    'Gabon', 'United Kingdom', 'Grenada', 'Georgia', 'French Guiana', 'Ghana', 'Gibraltar',
    'Greenland', 'Gambia', 'Guinea', 'Guadeloupe', 'Equatorial Guinea', 'Greece',
    'South Georgia and the South Sandwich Islands', 'Guatemala', 'Guam', 'Guinea-Bissau',
    'Guyana', 'Hong Kong', 'Heard Island and McDonald Islands', 'Honduras', 'Croatia',
    'Haiti', 'Hungary', 'Indonesia', 'Ireland', 'Israel', 'India',
    'British Indian Ocean Territory', 'Iraq', 'Iran, Islamic Republic of', 'Iceland',
    'Italy', 'Jamaica', 'Jordan', 'Japan', 'Kenya', 'Kyrgyzstan', 'Cambodia', 'Kiribati',
    'Comoros', 'Saint Kitts and Nevis', 'Korea, Democratic People''s Republic of',
    'Korea, Republic of', 'Kuwait', 'Cayman Islands', 'Kazakstan',
    'Lao People''s Democratic Republic', 'Lebanon', 'Saint Lucia', 'Liechtenstein',
    'Sri Lanka', 'Liberia', 'Lesotho', 'Lithuania', 'Luxembourg', 'Latvia',
    'Libyan Arab Jamahiriya', 'Morocco', 'Monaco', 'Moldova, Republic of', 'Madagascar',
    'Marshall Islands', 'Macedonia, the Former Yugoslav Republic of', 'Mali', 'Myanmar',
    'Mongolia', 'Macao', 'Northern Mariana Islands', 'Martinique', 'Mauritania',
    'Montserrat', 'Malta', 'Mauritius', 'Maldives', 'Malawi', 'Mexico', 'Malaysia',
    'Mozambique', 'Namibia', 'New Caledonia', 'Niger', 'Norfolk Island', 'Nigeria',
    'Nicaragua', 'Netherlands', 'Norway', 'Nepal', 'Nauru', 'Niue', 'New Zealand', 'Oman',
    'Panama', 'Peru', 'French Polynesia', 'Papua New Guinea', 'Philippines', 'Pakistan',
    'Poland', 'Saint Pierre and Miquelon', 'Pitcairn', 'Puerto Rico',
    'Palestinian Territory, Occupied', 'Portugal', 'Palau', 'Paraguay', 'Qatar', 'Reunion',
    'Romania', 'Russian Federation', 'Rwanda', 'Saudi Arabia', 'Solomon Islands',
    'Seychelles', 'Sudan', 'Sweden', 'Singapore', 'Saint Helena', 'Slovenia',
    'Svalbard and Jan Mayen', 'Slovakia', 'Sierra Leone', 'San Marino', 'Senegal',
    'Somalia', 'Suriname', 'Sao Tome and Principe', 'El Salvador', 'Syrian Arab Republic',
    'Swaziland', 'Turks and Caicos Islands', 'Chad', 'French Southern Territories', 'Togo',
    'Thailand', 'Tajikistan', 'Tokelau', 'Turkmenistan', 'Tunisia', 'Tonga', 'Timor-Leste',
    'Turkey', 'Trinidad and Tobago', 'Tuvalu', 'Taiwan', 'Tanzania, United Republic of',
    'Ukraine', 'Uganda', 'United States Minor Outlying Islands', 'United States', 'Uruguay',
    'Uzbekistan', 'Holy See (Vatican City State)', 'Saint Vincent and the Grenadines',
    'Venezuela', 'Virgin Islands, British', 'Virgin Islands, U.S.', 'Vietnam', 'Vanuatu',
    'Wallis and Futuna', 'Samoa', 'Yemen', 'Mayotte', 'Serbia', 'South Africa', 'Zambia',
    'Montenegro', 'Zimbabwe', 'Anonymous Proxy', 'Satellite Provider', 'Other',
    'Aland Islands', 'Guernsey', 'Isle of Man', 'Jersey', 'Saint Barthelemy', 'Saint Martin', 'Bottania' + #13#10 +
    'Soldat''s Bots were born there.');

implementation

constructor TFlagDB.Create(const FileName: string);
begin
  inherited Create;
  if FileExists(FileName) then
  begin
    isOpen := true;
    AssignFile(FDBFile, FileName);
    Reset(FDBFile);
    size := (FileSize(FDBFile) div 256);
  end
  else
    isOpen := false;
end;

function TFlagDB.GetFlagId(const numb1: byte; const numb2: byte; const numb3:
  byte; const numb4: byte): byte;
var
  line: TFlagDBLine;
  cluster: byte;
  ipnumb1: dword;
begin
  if (numb1 + numb2 + numb3 + numb4) = 0 then
  begin
    result := 253;
    exit;
  end;
  if isOpen then
  begin
    
    ipnumb1 := numb1 shl 24 + numb2 shl 16 + numb3 shl 8 + numb4;
    cluster := (numb1 + 2);

    repeat
      if (cluster = 0) then
        break;

      cluster := cluster - 1;
      seek(FDBFile, cluster * size);
      Read(FDBFile, line);
    until line.endip < ipnumb1;
    seek(FDBFile, cluster * size);

    while not Eof(FDBFile) do
    begin
      Read(FDBFile, line);
      if line.endip > ipnumb1 then
        break;
    end;
    Result := line.countryId;
  end
  else
    Result := 0;
end;

destructor TFlagDB.Destroy;
begin
  try
    if isOpen then
      CloseFile(FDBFile);
  except
  end;
  inherited Destroy;
end;

end.

