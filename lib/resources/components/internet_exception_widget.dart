import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_api_seth/resources/colors/app_colors.dart';

class InternetException extends StatefulWidget {

  final VoidCallback onPress;
  const InternetException({super.key, required this.onPress});

  @override
  State<InternetException> createState() => _InternetExceptionState();
}

class _InternetExceptionState extends State<InternetException> {
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
          Text('Please Turn On Your Internet'),
          SizedBox(height: screenHeight* 0.1),
          InkWell(
            onTap: widget.onPress,
            child: Container(

              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Retry'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
