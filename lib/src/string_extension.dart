import 'package:escp_printer/escp_printer.dart';

extension StringExtension on String {
  String get replacedAlignment {
    return replaceFirst('[L]', EscCommand.alignLeft.value)
        .replaceFirst('[C]', EscCommand.alignCenter.value)
        .replaceFirst('[R]', EscCommand.alignRight.value);
  }

  String get replacedStyle {
    return replaceAll('<b>', EscCommand.boldOn.value)
        .replaceAll('</b>', EscCommand.boldOff.value)
        .replaceAll('<u>', EscCommand.underlineOn.value)
        .replaceAll('</u>', EscCommand.underlineOff.value)
        .replaceAll('<i>', EscCommand.italicOn.value)
        .replaceAll('</i>', EscCommand.italicOff.value)
        .replaceAll("<font size='big'>", EscCommand.bigOn.value)
        .replaceAll("</font>", EscCommand.bigOff.value);
  }
}
