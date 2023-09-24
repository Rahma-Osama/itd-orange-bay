import 'package:flutter_gen/gen_l10n/app_localizations.dart';

List<String> photoType = ["All", "Panoramic View", "Relax"];
List<bool> photoTypeIsselected = [true, false, false];
List<bool> profileText = [true, false];
List<String> profDetails = ["Basic Info", "Security"];
List<bool> bookText = [true, false];
List<String> bookDetails = ["Past", "Upcoming"];

List<String> getServicesData(AppLocalizations locale) => [
      '12 ${locale.restaurants}',
      '8 ${locale.activities}',
      '10 ${locale.videos}',
      '40 ${locale.photos}'
    ];
