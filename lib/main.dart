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
        body: Column(
          children: [
            DateButton(),
            GraphSevere(),
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
      children: [
        OverflowBar(
          children: [
            TextButton(
              child: const Text('Weekly'),
              onPressed: () {},
            ),
            TextButton(
              child: const Text('Monthly'),
              onPressed: () {},
            ),
            TextButton(
              child: const Text('Yearly'),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}

class GraphSevere extends StatelessWidget {
  const GraphSevere({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('graph here');
  }
}
