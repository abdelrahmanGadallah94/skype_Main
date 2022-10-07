import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  var text = "";
  CustomButton({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *.8,
      height: MediaQuery.of(context).size.height * .08,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xff348eca),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * .04)
          )
        ),
          onPressed: () {},
          child: Text("$text")
      ),
    );
  }
}
