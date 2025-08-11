import 'package:escp_printer/escp_printer.dart';

extension StringExtension on String {
  String get replacedAlignment {
    return replaceFirst(RegExp(r'\[[Ll]\]'), EscCommand.alignLeft.value)
        .replaceFirst(RegExp(r'\[[Cc]\]'), EscCommand.alignCenter.value)
        .replaceFirst(RegExp(r'\[[Rr]\]'), EscCommand.alignRight.value);
  }

  String get replacedStyle {
    return replaceAll(RegExp(r'<[Bb]>'), EscCommand.boldOn.value)
        .replaceAll(RegExp(r'</[Bb]>'), EscCommand.boldOff.value)
        .replaceAll(RegExp(r'<[Uu]>'), EscCommand.underlineOn.value)
        .replaceAll(RegExp(r'</[Uu]>'), EscCommand.underlineOff.value)
        .replaceAll(RegExp(r'<[Ii]>'), EscCommand.italicOn.value)
        .replaceAll(RegExp(r'</[Ii]>'), EscCommand.italicOff.value)
        .replaceAll(
          RegExp(
            "<font\\s+size\\s*=\\s*['\"]big['\"]\\s*>",
            caseSensitive: false,
          ),
          EscCommand.bigOn.value,
        )
        .replaceAll(
          RegExp(r'</font>', caseSensitive: false),
          EscCommand.bigOff.value,
        );
  }
}
