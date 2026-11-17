import 'package:flutter/material.dart';
import 'awrad_screen.dart'; // <--- تم استيراد صفحة الأوراد هنا للربط

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F9), // خلفية هادئة وفاتحة
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B3B6F), // أزرق ملكي عميق
        title: const Text(
          'الأوراد الكسنزانية',
          style: TextStyle(
            color: Color(0xFFE0A96D), // ذهبي تراثي
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Color(0xFFE0A96D)),
            onPressed: () {
              // زر الإعدادات مستقبلاً
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // بطاقة الترحيب والورد اليومي
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF1B3B6F), Color(0xFF28527A)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'مرحباً بك، في رحاب الذكر',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'الورد اليومي: ورد الإخلاص والاستغفار',
                    style: TextStyle(
                      color: Color(0xFFE0A96D),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            
            // عنوان الأقسام
            const Text(
              'أقسام الأوراد والأذكار',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1B3B6F),
              ),
            ),
            const SizedBox(height: 16),

            // شبكة الأزرار والأقسام
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  // زر الأوراد الأساسية المربوط بالصفحة الجديدة
                  _buildMenuCard(
                    title: 'الأوراد الأساسية',
                    icon: Icons.menu_book,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AwradScreen(),
                        ),
                      );
                    },
                  ),
                  _buildMenuCard(
                    title: 'الأذكار اليومية',
                    icon: Icons.wb_sunny_outlined,
                    onTap: () {
                      // الانتقال لصفحة الأذكار مستقبلاً
                    },
                  ),
                  _buildMenuCard(
                    title: 'المسبحة الإلكترونية',
                    icon: Icons.control_point_duplicate,
                    onTap: () {
                      // الانتقال للمسبحة مستقبلاً
                    },
                  ),
                  _buildMenuCard(
                    title: 'الرسائل والآداب',
                    icon: Icons.auto_stories,
                    onTap: () {
                      // الانتقال للآداب مستقبلاً
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // دالة مساعدة لتصميم بطاقات القائمة
  Widget _buildMenuCard({required String title, required IconData icon, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: const Color(0xFF1B3B6F)),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1B3B6F),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
