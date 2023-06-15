import 'dart:convert';

import 'package:e_car/view/custom_widget/ui_element/custom_appbar_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import '../../helpers/theme/app_colors.dart';
import 'result_screen.dart';

class HealthForm extends StatefulWidget {
  const HealthForm({super.key});

  @override
  _HealthFormState createState() => _HealthFormState();
}

class _HealthFormState extends State<HealthForm> {
  final _formKey = GlobalKey<FormState>();
  Map<String, int> formState = {
    'Enter your age': 0,
    'Enter your blood pressure': 0,
    'Enter your specific gravity': 0,
    'Enter your albumin': 0,
    'Enter your diabetes': 0,
    'Is your red blood cell count normal': 0,
    'Is your pus cell normal': 0,
    'Does your pus-cell chum present': 0,
    'Does your bacteria present': 0,
    'Enter your random blood glucose level': 0,
    "Enter your blood's urea": 0,
    'Enter your serum creatinine': 0,
    'Enter your sodium level': 0,
    'Enter your potassium level': 0,
    'Enter your hemoglobin level': 0,
    'Enter your packed cell volume level': 0,
    'Enter your white blood cell count': 0,
    'Enter your red blood cell count': 0,
    'Are you suffering from hypertension': 0,
    'Are you suffering from diabetes mellitus': 0,
    "Are you suffering from coronary artery disease": 0,
    'is your appetite good': 0,
    'Are you suffering from edema': 0,
    'Are you suffering from anemia': 0,
  };
  bool isLoading = false;

  void getLabel(List<int> values) async {
    try {
      var headers = {'Content-Type': 'application/json'};
      setState(() {
        isLoading = true;
      });
      var request = http.Request(
          'POST', Uri.parse('https://team.mariamrady.repl.co/api/state'));
      request.body = json.encode({
        "data": [values]
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      setState(() {
        isLoading = false;
      });
      if (response.statusCode == 200) {
        final value = await response.stream.bytesToString();
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => ResultScreen(
                      result: value,
                    )));
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  Widget _buildTextField(String question) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: question,
        labelStyle: TextStyle(
          color: Colors.grey.shade700,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      keyboardType: TextInputType.number,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],
      onSaved: (value) {
        formState[question] = int.parse(value!);
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a number';
        }
        final number = int.tryParse(value);
        if (number == null || number < 0) {
          return 'Please enter a positive number';
        }
        return null;
      },
    );
  }

  Widget _buildCheckbox(String question) {
    return CheckboxListTile(
      title: Text(
        question,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
      activeColor: Colors.blue,
      checkColor: Colors.white,
      value: formState[question] == 1,
      onChanged: (newValue) {
        setState(() {
          formState[question] = newValue! ? 1 : 0;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(text: "Health Form", auto: false),
      body: Card(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildTextField('Enter your age'),
                  const SizedBox(height: 16),
                  _buildTextField('Enter your blood pressure'),
                  const SizedBox(height: 16),
                  _buildTextField('Enter your specific gravity'),
                  const SizedBox(height: 16),
                  _buildTextField('Enter your albumin'),
                  const SizedBox(height: 16),
                  _buildTextField('Enter your diabetes'),
                  const SizedBox(height: 16),
                  _buildCheckbox('Is your red blood cell count normal'),
                  const SizedBox(height: 16),
                  _buildCheckbox('Is your pus cell normal'),
                  const SizedBox(height: 16),
                  _buildCheckbox('Does your pus-cell chum present'),
                  const SizedBox(height: 16),
                  _buildCheckbox('Does your bacteria present'),
                  const SizedBox(height: 16),
                  _buildTextField('Enter your random blood glucose level'),
                  const SizedBox(height: 16),
                  _buildTextField("Enter your blood's urea"),
                  const SizedBox(height: 16),
                  _buildTextField('Enter your serum creatinine'),
                  const SizedBox(height: 16),
                  _buildTextField('Enter your sodium level'),
                  const SizedBox(height: 16),
                  _buildTextField('Enter your potassium level'),
                  const SizedBox(height: 16),
                  _buildTextField('Enter your hemoglobin level'),
                  const SizedBox(height: 16),
                  _buildTextField('Enter your packed cell volume level'),
                  const SizedBox(height: 16),
                  _buildTextField('Enter your white blood cell count'),
                  const SizedBox(height: 16),
                  _buildTextField('Enter your red blood cell count'),
                  const SizedBox(height: 16),
                  _buildCheckbox('Are you suffering from hypertension'),
                  const SizedBox(height: 16),
                  _buildCheckbox('Are you suffering from diabetes mellitus'),
                  const SizedBox(height: 16),
                  _buildCheckbox(
                      'Are you suffering from coronary artery disease'),
                  const SizedBox(height: 16),
                  _buildCheckbox('is your appetite good'),
                  const SizedBox(height: 16),
                  _buildCheckbox('Are you suffering from edema'),
                  const SizedBox(height: 16),
                  _buildCheckbox('Are you suffering from anemia'),
                  const SizedBox(height: 16),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: isLoading
                        ? const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: CircularProgressIndicator(),
                          )
                        : ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateColor.resolveWith(
                              (states) => mainColor,
                            )),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();

                                List<int> formValues =
                                    formState.values.toList().cast<int>();

                                getLabel(formValues);
                              }
                            },
                            child: const Text('Save'),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
