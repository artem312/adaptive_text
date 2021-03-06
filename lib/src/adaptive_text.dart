import 'package:flutter/material.dart';

import 'adaptive_widget.dart';

class AdaptiveText extends AdaptiveWidget {
  AdaptiveText(
    String text, {
    Key? key,
    TextStyle? textStyle,
    int maxLines = 1,
    TextAlign textAlign = TextAlign.start,
    TextDirection textDirection = TextDirection.ltr,
    AdaptiveGroup? group,
    double heightAccurate = 0.7,
  }) : super(
          key: key,
          text: TextSpan(text: text, style: textStyle),
          maxLines: maxLines,
          textAlign: textAlign,
          textDirection: textDirection,
          group: group,
          heightAccurate: heightAccurate,
        );

  const AdaptiveText.rich(
    TextSpan text, {
    Key? key,
    int maxLines = 1,
    TextAlign textAlign = TextAlign.start,
    TextDirection textDirection = TextDirection.ltr,
    AdaptiveGroup? group,
    double heightAccurate = 0.7,
  }) : super(
          key: key,
          text: text,
          maxLines: maxLines,
          textAlign: textAlign,
          textDirection: textDirection,
          group: group,
          heightAccurate: heightAccurate,
        );

  @override
  State<AdaptiveText> createState() => _AdaptiveTextState();
}

class _AdaptiveTextState extends State<AdaptiveText> with AdaptiveState {
  @override
  Widget buildAdaptive(BuildContext context, TextSpan text,
          TextStyle defaultStyle, double scale) =>
      Text.rich(
        text,
        maxLines: widget.maxLines,
        textAlign: widget.textAlign,
        textDirection: widget.textDirection,
         softWrap: widget.maxLines>1,
         textScaleFactor: scale,
        style: defaultStyle,
      );
}
