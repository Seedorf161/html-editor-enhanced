// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class SEn extends S {
  SEn([String locale = 'en']) : super(locale);

  @override
  String get insertImage => 'Insert Image';

  @override
  String get selectFromFiles => 'Select from files';

  @override
  String get chooseImage => 'Choose image';

  @override
  String get url => 'URL';

  @override
  String get cancel => 'Cancel';

  @override
  String get chooseImageOrUrl => 'Please either choose an image or enter an image URL!';

  @override
  String get enterImageUrl => 'Please enter an image URL!';

  @override
  String get eitherImageOrUrl => 'Please input either an image or an image URL, not both!';
}
