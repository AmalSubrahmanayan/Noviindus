import 'package:flutter/material.dart';
import 'package:noviindus/app/Login/Controller/login_controller.dart';
import 'package:noviindus/app/Login/View/Widget/textfield.dart';
import 'package:noviindus/widget/constants/app_colors.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<LoginController>();
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "asset/image/WhatsApp Image 2023-03-03 at 22.24.44.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 60, top: 145),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Welcome",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 41,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Manage your Bus and Drivers",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFieldWidgets(
              hint: "Enter Username",
              validator: "",
              controller: controller.emailController,
              keybord: TextInputType.emailAddress,
              obsc: false,
            ),
            TextFieldWidgets(
              hint: "Enter Password",
              validator: "",
              controller: controller.passwordController,
              keybord: TextInputType.visiblePassword,
              obsc: true,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer(
          builder: (context, value, _) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: bgRed,
              ),
              onPressed: () {
                controller.loginUser(context);
              },
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: kWhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
            );
            // return FloatingActionButton.extended(
            //   backgroundColor: Colors.red,
            //   onPressed: () {
            //     controller.loginUser(context);
            //   },
            //   label: controller.isLoading
            //       ? const CircularProgressIndicator(
            //           color: Colors.white,
            //         )
            //       : const Text(
            //           "Login",
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //           ),
            //         ),
            // );
          },
        ),
      ),
    );
  }
}
