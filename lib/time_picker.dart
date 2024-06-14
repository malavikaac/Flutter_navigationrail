import 'package:flutter/material.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.cyan, //color you want at header
        buttonTheme: ButtonTheme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            secondary: Colors
                .cyan, 
                // Color you want for action buttons (CANCEL and OK)
          ),
        ),
      ),
      child: Builder(
        builder: (context) => GestureDetector(
          onTap: () async {
            final selectedTime = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );

            if (selectedTime != null) {
              // Do further task
            }
          },
         
        ),
      ),
    );
  }
}