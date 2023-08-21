import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/l10n/app_localizations.dart';

extension ContextLanguageExtension on BuildContext {
  S get language => S.of(this)!;
  String get locale => Localizations.localeOf(this).languageCode;
}
