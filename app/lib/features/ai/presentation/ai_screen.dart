import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class AiScreen extends StatelessWidget {
  const AiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: const Text(
          "AI Assistant",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [

                    CircleAvatar(
                      radius: 45,
                      backgroundColor: AppColors.primary,
                      child: Icon(
                        Icons.smart_toy,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      "مرحبًا بك في مساعد ecadoli AI",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "يمكنك لاحقًا استخدام الذكاء الاصطناعي "
                      "للمساعدة في الكتابة والأفكار والمحادثات.",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            TextField(
              decoration: InputDecoration(
                hintText: "اكتب رسالتك...",
                filled: true,
                fillColor: Colors.white,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}