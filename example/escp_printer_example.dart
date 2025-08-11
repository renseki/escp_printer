import 'package:escp_printer/escp_printer.dart';

void main() {
  final texts = [
    "[C]<u><font size='big'>ORDER N°045</font></u>",
    "[L]",
    "[C]================================",
    "[L]",
    "[L]<b>BEAUTIFUL SHIRT</b>[R]9.99e",
    "[L]  + Size : S",
    "[L]",
    "[L]<b>AWESOME HAT</b>[R]24.99e",
    "[L]  + Size : 57/58",
    "[L]",
    "[C]--------------------------------",
    "[R]TOTAL PRICE :[R]34.98e",
    "[R]TAX :[R]4.23e",
    "[L]",
    "[C]================================",
    "[L]",
    "[L]<font size='big'>Customer :</font>",
    "[L]Raymond DUPONT",
    "[L]5 rue des girafes",
    "[L]31547 PERPETES",
    "[L]Tel : +33801201456",
  ];
  for (final text in texts) {
    print(EscCommand.encode(text));
  }
}
