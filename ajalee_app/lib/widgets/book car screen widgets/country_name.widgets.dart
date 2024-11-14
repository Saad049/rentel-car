import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class CountryName extends StatefulWidget {
  const CountryName({
    Key? key,
  }) : super(key: key);

  @override
  State<CountryName> createState() => _CountryNameState();
}

class _CountryNameState extends State<CountryName> {
  Country? _selectedCountry;
  final TextEditingController _countryController = TextEditingController();

  void _pickCountry() {
    showCountryPicker(
      context: context,
      showPhoneCode: false, // Disable phone code display in the picker
      onSelect: (Country country) {
        setState(() {
          _selectedCountry = country;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: TextField(
        controller: _countryController,
        keyboardType: TextInputType.text,
        readOnly: true, // Make it read-only if it's just for display
        decoration: InputDecoration(
          isDense: true,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: _pickCountry,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (_selectedCountry != null)
                      Text(
                        '${_selectedCountry!.flagEmoji} ${_selectedCountry!.name}',
                        style: TextStyle(fontSize: 14),
                      )
                    else
                      Text(
                        'Select Country',
                        style: TextStyle(fontSize: 14),
                      ),
                  ],
                ),
              ),
            ),
          ),
          suffixIcon: GestureDetector(
            onTap: _pickCountry,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_drop_down_sharp,
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
