import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mej/theme.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

// HomePage
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MyEczema Journal'),
          titleTextStyle: GoogleFonts.workSans(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: AppColors.titleColor,
            wordSpacing: 5.0,
          ),
          backgroundColor: AppColors.primaryColor,
          centerTitle: true,
        ),
        body: const Column(
          children: [
            SizedBox(height: 20),
            DateButton(),
            SizedBox(height: 20),
            GraphSevere(),
            SizedBox(height: 20),
            RecentAssessmentHistory(),
            SizedBox(height: 20),
            BottomNavBar(),
          ],
        ));
  }
}

class DateButton extends StatefulWidget {
  const DateButton({super.key});

  @override
  State<DateButton> createState() => _DateButtonState();
}

class _DateButtonState extends State<DateButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OverflowBar(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                elevation: 5,
                shadowColor: Colors.black.withOpacity(0.5),
              ),
              child: Text(
                'Weekly',
                style: GoogleFonts.workSans(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                elevation: 5,
                shadowColor: Colors.black.withOpacity(0.5),
              ),
              child: Text(
                'Monthly',
                style: GoogleFonts.workSans(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                elevation: 5,
                shadowColor: Colors.black.withOpacity(0.5),
              ),
              child: Text(
                'Yearly',
                style: GoogleFonts.workSans(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class GraphSevere extends StatefulWidget {
  const GraphSevere({super.key});

  @override
  State<GraphSevere> createState() => _GraphSevereState();
}

class _GraphSevereState extends State<GraphSevere> {
  @override
  Widget build(BuildContext context) {
    return const Text('graph here');
  }
}

class RecentAssessmentHistory extends StatefulWidget {
  const RecentAssessmentHistory({super.key});

  @override
  State<RecentAssessmentHistory> createState() =>
      _RecentAssessmentHistoryState();
}

class _RecentAssessmentHistoryState extends State<RecentAssessmentHistory> {
  @override
  Widget build(BuildContext context) {
    return const Text('recent assessment here');
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return const Text('navbar here');
  }
}
