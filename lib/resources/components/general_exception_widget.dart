import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_api_seth/resources/colors/app_colors.dart';
import 'package:getx_api_seth/resources/components/round_button_widget.dart';

class GeneralException extends StatefulWidget {

  final VoidCallback onPress;
  const GeneralException({super.key, required this.onPress});

  @override
  State<GeneralException> createState() => _GeneralExceptionState();
}

class _GeneralExceptionState extends State<GeneralException> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Column(
        children: [
          Icon(
            Icons.cloud_off,
            color: AppColors.redColor,
          ),
          Text('Please Turn On Your Internet\n Its a General Exception'),
          SizedBox(height: screenHeight* 0.1),
          RoundButton(title: 'Hare Krishna', onPress: () {  },width: 120,height: 60,loading:  true,)
        ],
      ),
    );
  }
}
