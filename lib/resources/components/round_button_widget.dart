import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_api_seth/resources/colors/app_colors.dart';

class RoundButton extends StatefulWidget {
  const RoundButton({
    super.key,
    this.buttonColor = AppColors.redColor,
    this.textColor = AppColors.blackColor,
    required this.title,
    this.width = 60,
    this.height = 50,
    this.loading = false,
    required this.onPress,
  });

  final bool loading;
  final String title;
  final double height, width;

  final VoidCallback onPress;
  final Color textColor, buttonColor;

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.buttonColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: widget.loading
            ? Center(child: CircularProgressIndicator())
            : Center(
                child: Text(widget.title),
              ),
      ),
    );
  }
}
