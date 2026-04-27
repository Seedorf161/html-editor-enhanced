import 'package:flutter/material.dart';

class CustomToggleButtons extends StatelessWidget {
  final BoxConstraints? constraints;
  final Color? color;
  final Color? selectedColor;
  final Color? fillColor;
  final Color? focusColor;
  final Color? highlightColor;
  final Color? hoverColor;
  final Color? splashColor;
  final Color? selectedBorderColor;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final double? borderWidth;
  final bool renderBorder;
  final TextStyle? textStyle;
  final void Function(int) onPressed;
  final List<bool> isSelected;
  final List<Widget> children;
  final double spacing;

  const CustomToggleButtons({
    Key? key,
    this.constraints,
    this.color,
    this.selectedColor,
    this.fillColor,
    this.focusColor,
    this.highlightColor,
    this.hoverColor,
    this.splashColor,
    this.selectedBorderColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.renderBorder = false,
    this.textStyle,
    required this.onPressed,
    required this.isSelected,
    required this.children,
    this.spacing = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (spacing == 0.0 && children.length > 1) {
      // If spacing is 0, we can just use the standard ToggleButtons to preserve the contiguous borders!
      // Actually, wait, if we use standard ToggleButtons, the inside borders will be drawn correctly!
      // But what if the user WANTS the inner radiuses even when spacing is 0?
      // "setting the radius of the toolbar icon buttons (when selected and splash/hover radius) and the space between the buttons of each section"
      // Let's just always split them so radius applies to ALL buttons, regardless of spacing!
    }

    return Wrap(
      spacing: spacing,
      children: List.generate(children.length, (index) {
        return ToggleButtons(
          constraints: constraints,
          color: color,
          selectedColor: selectedColor,
          fillColor: fillColor,
          focusColor: focusColor,
          highlightColor: highlightColor,
          hoverColor: hoverColor,
          splashColor: splashColor,
          selectedBorderColor: selectedBorderColor,
          borderColor: borderColor,
          borderRadius: borderRadius,
          borderWidth: borderWidth,
          renderBorder: renderBorder,
          textStyle: textStyle,
          onPressed: (int _) => onPressed(index),
          isSelected: [isSelected[index]],
          children: [children[index]],
        );
      }),
    );
  }
}
