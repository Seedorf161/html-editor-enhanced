import 'package:lucide_icons/lucide_icons.dart';
import 'package:flutter/material.dart';

/// Abstract class that all the toolbar classes extend
abstract class Toolbar {
  const Toolbar();
}

/// Style group
class StyleButtons extends Toolbar {
  final bool style;

  const StyleButtons({
    this.style = true,
  });
}

/// Font setting group
class FontSettingButtons extends Toolbar {
  final bool fontName;
  final bool fontSize;
  final bool fontSizeUnit;

  const FontSettingButtons({
    this.fontName = true,
    this.fontSize = true,
    this.fontSizeUnit = true,
  });
}

/// Font group
class FontButtons extends Toolbar {
  final bool bold;
  final bool italic;
  final bool underline;
  final bool clearAll;
  final bool strikethrough;
  final bool superscript;
  final bool subscript;

  const FontButtons({
    this.bold = true,
    this.italic = true,
    this.underline = true,
    this.clearAll = true,
    this.strikethrough = true,
    this.superscript = true,
    this.subscript = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (bold) icons.add(Icon(LucideIcons.bold));
    if (italic) icons.add(Icon(LucideIcons.italic));
    if (underline) icons.add(Icon(LucideIcons.underline));
    if (clearAll) icons.add(Icon(LucideIcons.eraser));
    return icons;
  }

  List<Icon> getIcons2() {
    var icons = <Icon>[];
    if (strikethrough) icons.add(Icon(LucideIcons.strikethrough));
    if (superscript) icons.add(Icon(LucideIcons.superscript));
    if (subscript) icons.add(Icon(LucideIcons.subscript));
    return icons;
  }
}

/// Color bar group
class ColorButtons extends Toolbar {
  final bool foregroundColor;
  final bool highlightColor;

  const ColorButtons({
    this.foregroundColor = true,
    this.highlightColor = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (foregroundColor) icons.add(Icon(LucideIcons.baseline));
    if (highlightColor) icons.add(Icon(LucideIcons.paintBucket));
    return icons;
  }
}

/// List group
class ListButtons extends Toolbar {
  final bool ul;
  final bool ol;
  final bool listStyles;

  const ListButtons({
    this.ul = true,
    this.ol = true,
    this.listStyles = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (ul) icons.add(Icon(LucideIcons.list));
    if (ol) icons.add(Icon(LucideIcons.listOrdered));
    return icons;
  }
}

/// Paragraph group
class ParagraphButtons extends Toolbar {
  final bool alignLeft;
  final bool alignCenter;
  final bool alignRight;
  final bool alignJustify;
  final bool increaseIndent;
  final bool decreaseIndent;
  final bool textDirection;
  final bool lineHeight;
  final bool caseConverter;

  const ParagraphButtons({
    this.alignLeft = true,
    this.alignCenter = true,
    this.alignRight = true,
    this.alignJustify = true,
    this.increaseIndent = true,
    this.decreaseIndent = true,
    this.textDirection = true,
    this.lineHeight = true,
    this.caseConverter = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (alignLeft) icons.add(Icon(LucideIcons.alignLeft));
    if (alignCenter) icons.add(Icon(LucideIcons.alignCenter));
    if (alignRight) icons.add(Icon(LucideIcons.alignRight));
    if (alignJustify) icons.add(Icon(LucideIcons.alignJustify));
    return icons;
  }

  List<Icon> getIcons2() {
    var icons = <Icon>[];
    if (increaseIndent) icons.add(Icon(LucideIcons.indent));
    if (decreaseIndent) icons.add(Icon(LucideIcons.outdent));
    return icons;
  }
}

/// Insert group
class InsertButtons extends Toolbar {
  final bool link;
  final bool picture;
  final bool audio;
  final bool video;
  final bool otherFile;
  final bool table;
  final bool hr;

  const InsertButtons({
    this.link = true,
    this.picture = true,
    this.audio = true,
    this.video = true,
    this.otherFile = false,
    this.table = true,
    this.hr = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (link) icons.add(Icon(LucideIcons.link));
    if (picture) icons.add(Icon(LucideIcons.image));
    if (audio) icons.add(Icon(LucideIcons.music));
    if (video) icons.add(Icon(LucideIcons.video));
    if (otherFile) icons.add(Icon(LucideIcons.paperclip));
    if (table) icons.add(Icon(LucideIcons.table));
    if (hr) icons.add(Icon(LucideIcons.minus));
    return icons;
  }
}

/// Miscellaneous group
class OtherButtons extends Toolbar {
  final bool fullscreen;
  final bool codeview;
  final bool undo;
  final bool redo;
  final bool help;
  final bool copy;
  final bool paste;

  const OtherButtons({
    this.fullscreen = true,
    this.codeview = true,
    this.undo = true,
    this.redo = true,
    this.help = true,
    this.copy = true,
    this.paste = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (fullscreen) icons.add(Icon(LucideIcons.maximize));
    if (codeview) icons.add(Icon(LucideIcons.code));
    if (undo) icons.add(Icon(LucideIcons.undo));
    if (redo) icons.add(Icon(LucideIcons.redo));
    if (help) icons.add(Icon(LucideIcons.helpCircle));
    return icons;
  }

  List<Icon> getIcons2() {
    var icons = <Icon>[];
    if (copy) icons.add(Icon(LucideIcons.copy));
    if (paste) icons.add(Icon(LucideIcons.clipboardPaste));
    return icons;
  }
}
