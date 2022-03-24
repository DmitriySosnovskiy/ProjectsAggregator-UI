import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:graduation_work_ui/app/Strings.dart';
import 'package:graduation_work_ui/features/registration/models/data/user_reg_response.dart';
import 'package:graduation_work_ui/features/registration/models/domain/user_registration_data.dart';
import 'package:graduation_work_ui/features/registration/presentation/bloc/registration_bloc.dart';
import 'package:graduation_work_ui/features/registration/presentation/bloc/registration_form_bloc_models.dart';

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegistrationFormBloc>(
      create: (_) => GetIt.instance.get(),
      child: RegistrationFormContent(),
    );
  }
}

class RegistrationFormContent extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<RegistrationFormBloc>(context);

    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 50),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 8),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ]),
            constraints: BoxConstraints(maxWidth: 400),
            child: Form(
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      Strings.registration.toUpperCase(),
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 3,
                          color: Colors.grey[600]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          labelText: Strings.email_hint),
                    ),
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        labelText: Strings.password_hint),
                  ),
                  TextFormField(
                    controller: firstNameController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: Strings.first_name_hint,
                    ),
                  ),
                  TextFormField(
                    controller: lastNameController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person_add_alt_1),
                      labelText: Strings.last_name_hint,
                    ),
                  ),
                  TextFormField(
                    controller: phoneNumberController,
                    decoration: InputDecoration(
                      labelText: Strings.phone_number_hint,
                      icon: Icon(Icons.phone),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 50,
                          margin: EdgeInsets.only(top: 50),
                          child: SignUpButton(
                            onPressedCallback: () {
                              bloc.add(RegistrationScreenEvent.register(UserRegistrationData(
                                  email: emailController.value.text, 
                                  password: passwordController.value.text, 
                                  firstName: firstNameController.value.text, 
                                  lastName: lastNameController.value.text, 
                                  phoneNumber: phoneNumberController.value.text)));
                            },
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class SignUpButton extends StatelessWidget {
  final VoidCallback onPressedCallback;

  SignUpButton({required this.onPressedCallback});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationFormBloc, RegistrationScreenState>(
      builder: (buildContext, state) {
        if (state == RegistrationScreenState.loading()) {
          return Center(
              child: SizedBox(
                  width: 50, height: 50, child: CircularProgressIndicator()));
        } else {
          return SizedBox(
            child: TextButton(
                child: Text(
                  Strings.sign_up,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.all(20)),
                onPressed: () => onPressedCallback()),
          );
        }
      },
    );
  }
}
