import 'package:dars_28/pages/login_page.dart';
import 'package:dars_28/utils/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(AppImages.logo),
        title: const Text("Working with Resources"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) {
                  return LoginPage();
                }),
              );
            },
            icon: const Icon(Icons.login),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          children: [
            const Text("1-Mavzu", style: AppTextStyles.headline),
            Text(
              "Occaecat velit exercitation pariatur dolor do incididunt nulla sit quis ex minim enim consequat consequat.",
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 20),
            const Text("2-Mavzu", style: AppTextStyles.headline),
            Text(
              "Ea Lorem officia esse eu nulla occaecat ad anim minim incididunt cupidatat nisi eu ut.",
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 20),
            const Text("3-Mavzu", style: AppTextStyles.headline),
            Text(
              "Velit sunt voluptate sunt amet ex ex pariatur commodo irure non culpa cupidatat.",
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
            Image.asset(
              AppImages.logo,
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
