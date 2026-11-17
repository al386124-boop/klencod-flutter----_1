import 'package:flutter/material.dart';

class AwradScreen extends StatelessWidget {
  const AwradScreen({Key? key}) : super(key: key);

  // قائمة تجريبية للأوراد (يمكنك إضافة أو تعديل النصوص لاحقاً)
  final List> awradList = const [
    {
      'title': 'الورد اليومي العام',
      'description': 'الاستغفار، الصلاة على النبي صلى الله عليه وسلم، وقراءة سور قصيرة بتدبر وخشوع.',
    },
    {
      'title': 'ورد الإخلاص والتوحيد',
      'description': 'قراءة سورة الإخلاص والأذكار المرتبطة بتثبيت التوحيد واليقين في القلب.',
    },
    {
      'title': 'ورد الصلاة على النبي',
      'description': 'الصيغة الكسنزانية الشريفة والصلوات المخصوصة للتقرب بحب النبي المصطفى.',
    },
    {
      'title': 'الأوراد الأسبوعية',
      'description': 'أوراد خاصة بيوم الجمعة والأيام المباركة للذكر والمجاهدة الروحية.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B3B6F),
        title: const Text(
          'الأوراد الأساسية',
          style: TextStyle(
            color: Color(0xFFE0A96D),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xFFE0A96D)),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: awradList.length,
        itemBuilder: (context, index) {
          final awrad = awradList[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFE0A96D).withOpacity(0.3)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF1B3B6F).withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.menu_book,
                  color: Color(0xFF1B3B6F),
                ),
              ),
              title: Text(
                awrad['title']!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1B3B6F),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  awrad['description']!,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[700],
                    height: 1.4,
                  ),
                ),
              ),
              onTap: () {
                // هنا يمكنك فتح تفاصيل الورد أو النص الكامل مستقبلاً
              },
            ),
          );
        },
      ),
    );
  }
}
