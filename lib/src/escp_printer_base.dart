import 'package:escp_printer/src/string_extension.dart';

enum EscCommand {
  reset(value: '\x1B@'),
  newLine(value: '\x0A'),
  boldOn(value: '\x1BE'),
  boldOff(value: '\x1BF'),
  italicOn(value: '\x1B4'),
  italicOff(value: '\x1B5'),
  underlineOn(value: '\x1B-\x01'),
  underlineOff(value: '\x1B-\x00'),
  condensedOn(value: '\x0F'),
  condensedOff(value: '\x12'),
  bigOn(value: '\x0E'),
  bigOff(value: '\x14'),
  alignLeft(value: '\x1Ba\x00'),
  alignCenter(value: '\x1Ba\x01'),
  alignRight(value: '\x1Ba\x02');

  const EscCommand({required this.value});

  final String value;

  static List<int> encode({
    required String text,
    List<EscCommand> commands = const [],
    bool hasNewLine = true,
  }) {
    final string = reset.value + commands.map((e) => e.value).join() + text;
    return (hasNewLine ? string + newLine.value : string).codeUnits;
  }

  static String transform(String text) {
    return text.replacedAlignment.replacedStyle;
  }
}
