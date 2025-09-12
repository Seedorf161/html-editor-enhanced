// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class SPt extends S {
  SPt([String locale = 'pt']) : super(locale);

  @override
  String get insertImage => 'Inserir Imagem';

  @override
  String get selectFromFiles => 'Selecione da galeria';

  @override
  String get chooseImage => 'Escolher Imagem';

  @override
  String get url => 'URL';

  @override
  String get cancel => 'Cancelar';

  @override
  String get chooseImageOrUrl => 'Por favor, escolha uma imagem ou insira o URL da imagem!';

  @override
  String get enterImageUrl => 'Por favor, insira a URL da imagem!';

  @override
  String get eitherImageOrUrl => 'Insira uma imagem ou o URL da imagem, não ambos!';
}
