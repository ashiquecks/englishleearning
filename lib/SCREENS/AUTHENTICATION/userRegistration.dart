import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:englishexpert/PROVIDER/datePickerProvider.dart';
import 'package:englishexpert/PROVIDER/userRegisterProvider.dart';
import 'package:englishexpert/WIDGETS/appButtons.dart';
import 'package:englishexpert/WIDGETS/appSizeBox.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserRegistration extends StatefulWidget {
  const UserRegistration({super.key});

  @override
  State<UserRegistration> createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late SingleValueDropDownController _cnt;

  @override
  void initState() {
    _cnt = SingleValueDropDownController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final widgetSize = MediaQuery.of(context).size;
    final userFormProvider = Provider.of<UserRegisterProvider>(
      context,
    );
    final userFormProviderFn =
        Provider.of<UserRegisterProvider>(context, listen: false);
    final dateFormatProviderFn =
        Provider.of<DatePickerProvider>(context, listen: false);
    final dateFormatProvider = Provider.of<DatePickerProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: SizedBox(
              height: widgetSize.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Name",
                      hintText: "Enter Your FullName",
                    ),
                    validator: (value) {
                      if (value == null) {
                        return "Required field";
                      } else {
                        return null;
                      }
                    },
                  ),
                  heightBoxSmall(),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: "Enter Your Email",
                    ),
                    validator: (value) {
                      if (value == null) {
                        return "Required field";
                      } else {
                        return null;
                      }
                    },
                  ),
                  heightBoxSmall(),
                  Row(
                    children: [
                      Radio(
                        value: "Male",
                        groupValue: userFormProvider.userGender,
                        onChanged: (value) {
                          userFormProviderFn.setUserGender(
                              stateUserGender: value.toString());
                        },
                      ),
                      const Text("Male"),
                      Radio(
                        value: "Female",
                        groupValue: userFormProvider.userGender,
                        onChanged: (value) {
                          userFormProviderFn.setUserGender(
                              stateUserGender: value.toString());
                        },
                      ),
                      const Text("Female"),
                      Radio(
                        value: "Other",
                        groupValue: userFormProvider.userGender,
                        onChanged: (value) {
                          userFormProviderFn.setUserGender(
                              stateUserGender: value.toString());
                        },
                      ),
                      const Text("Other"),
                    ],
                  ),
                  heightBoxSmall(),
                  DropdownDatePicker(
                    inputDecoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    isDropdownHideUnderline: true,
                    isFormValidator: true,
                    startYear: 1900,
                    endYear: 2020,
                    width: 10,
                    selectedMonth: 10,
                    selectedYear: 1993,
                    onChangedDay: (day) =>
                        dateFormatProviderFn.setDay(stateDay: day.toString()),
                    onChangedMonth: (month) => dateFormatProviderFn.setMonth(
                        stateMonth: month.toString()),
                    onChangedYear: (year) => dateFormatProviderFn.setYear(
                        stateYear: year.toString()),
                  ),
                  heightBoxSmall(),
                  DropDownTextField(
                    textFieldDecoration: const InputDecoration(
                        label: Text("Select City"),
                        border: OutlineInputBorder()),
                    controller: _cnt,
                    clearOption: false,
                    enableSearch: true,
                    searchDecoration:
                        const InputDecoration(hintText: "Select Your City"),
                    validator: (value) {
                      if (value == null) {
                        return "Required field";
                      } else {
                        return null;
                      }
                    },
                    dropDownItemCount: 6,
                    dropDownList: const [
                      DropDownValueModel(name: 'calicut', value: "calicut"),
                      DropDownValueModel(name: 'thrissur', value: "thrisur"),
                      DropDownValueModel(name: 'kochi', value: "kochi"),
                      DropDownValueModel(
                          name: 'trivandrum', value: "trivandrum"),
                    ],
                    onChanged: (val) {},
                  ),
                  heightBoxSmall(),
                  verifyButton(
                    context: context,
                    buttonText: "CONFIRM",
                    buttonAction: () {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                      _formKey.currentState!.save();
                      userFormProviderFn.setUserDOB(
                          stateUserDOB:
                              "${dateFormatProvider.day}-${dateFormatProvider.month}-${dateFormatProvider.year}");
                      Navigator.pushNamed(context, '/homeScreen');
                    },
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
