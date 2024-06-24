import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCalc extends StatelessWidget {
  MyCalc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> nums = ['7', '8', '9', '4', '5', '6', '1', '2', '3', '0'];
    final myProvider = Provider.of<MyProvider>(context); // Access the provider

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              controller: TextEditingController(
                text: myProvider.output,
              ),
              readOnly: true,
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: nums.length,
              itemBuilder: (BuildContext context, int index) =>
                  buttons(nums[index], context),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Operanedbuttons('+', context),
              Operanedbuttons('-', context),
              Operanedbuttons('/', context),
              Operanedbuttons('*', context),
            ],
          ),
        ],
      ),
    );
  }
}

class MyProvider extends ChangeNotifier with MyMixin {
  void buttonPressed(String buttonText) {
    if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == '*' ||
        buttonText == '/') {
      // Perform the operation when one of these buttons is pressed
      switch (buttonText) {
        case '+':
          // Addition
          output = (num1 + num2).toString();
          break;
        case '-':
          // Subtraction
          output = (num1 - num2).toString();
          break;
        case '*':
          // Multiplication
          output = (num1 * num2).toString();
          break;
        case '/':
          // Division
          if (num2 != 0) {
            output = (num1 / num2).toString();
          } else {
            output = 'Error';
          }
          break;
      }
    } else {
      // Handle number buttons
      _output = buttonText; // Assuming you want to replace the entire output
      notifyListeners();
    }
  }
}

mixin MyMixin {
  double num1 = 0.0;
  double num2 = 0.0;
  String output = '0.0';
  String _output = '0.0'; // Internal variable for number input
}

Widget buttons(String buttonText, BuildContext context) {
  return TextButton(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    ),
    onPressed: () {
      // Call the buttonPressed method from the provider with the button text
      Provider.of<MyProvider>(context, listen: false).buttonPressed(buttonText);
    },
    child: Text(buttonText),
  );
}

Widget Operanedbuttons(String index, BuildContext context) {
  return TextButton(
    style: ButtonStyle(
      backgroundColor:
          MaterialStateColor.resolveWith((states) => Colors.orange),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    ),
    onPressed: () {
      // Call the buttonPressed method from the provider
      Provider.of<MyProvider>(context, listen: false).buttonPressed(index);
    },
    child: Text(index),
  );
}
