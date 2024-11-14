import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class CountryCode extends StatefulWidget {
  /// New parameter for the label text
  const CountryCode({
    Key? key,

    // Default height
    // Required label text
  }) : super(key: key);

  @override
  State<CountryCode> createState() => _CountryCodeState();
}

class _CountryCodeState extends State<CountryCode> {
  Country? _selectedCountry;
  final TextEditingController _phoneController = TextEditingController();

  void _pickCountry() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      onSelect: (Country country) {
        setState(() {
          _selectedCountry = country;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        child: TextField(
          controller: _phoneController,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(),
            isDense: true,
            prefixIcon: GestureDetector(
              onTap: _pickCountry,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (_selectedCountry != null) ...[
                      Text(
                        '${_selectedCountry!.flagEmoji} +${_selectedCountry!.phoneCode}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ] else
                      Text('+', style: TextStyle(fontSize: 16)),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
