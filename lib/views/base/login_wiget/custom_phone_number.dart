import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:flutter_multi_formatter/widgets/country_dropdown.dart';

class CustomPhoneNumberField extends StatefulWidget {
  const CustomPhoneNumberField({super.key});

  @override
  State<CustomPhoneNumberField> createState() => _CustomPhoneNumberFieldState();
}

class _CustomPhoneNumberFieldState extends State<CustomPhoneNumberField> {
  PhoneCountryData? _initialCountryData;
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
          flex: 3,
          child: CountryDropdown(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.grey.shade300))),
              printCountryName: true,
              initialCountryCode: 'Jo',
              onCountrySelected: (PhoneCountryData countryData) {
                setState(() {
                  _initialCountryData = countryData;
                });
              })),
      SizedBox(width: 10.0),
      Expanded(
          flex: 5,
          child: TextFormField(
              key: ValueKey(_initialCountryData ?? 'country'),
              decoration: InputDecoration(
                  hintText: '796342455',
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.grey.shade300))),
              keyboardType: TextInputType.phone,
              inputFormatters: [
                PhoneInputFormatter(
                  allowEndlessPhone: false,
                  defaultCountryCode: _initialCountryData?.countryCode,
                )
              ]))
    ]);
  }
}
