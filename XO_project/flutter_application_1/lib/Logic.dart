import 'package:flutter/material.dart';

class PLayer {
  String P1 = 'x';
  String P2 = 'o';
  static String P3 = '';
}

class gaim {
  List boared = [];
  List initlist() {
    return List.generate(9, (index) => PLayer.P3);
  }



 String checkWinner() {
    // Check rows
    for (int i = 0; i < 9; i += 3) {
      if (boared[i] != '' && boared[i] == boared[i + 1] && boared[i] == boared[i + 2]) {
        return boared[i];
      }
    }

    // Check columns
    for (int i = 0; i < 3; i++) {
      if (boared[i] != '' && boared[i] == boared[i + 3] && boared[i] == boared[i + 6]) {
        return boared[i];
      }
    }

    // Check diagonals
    if (boared[0] != '' && boared[0] == boared[4] && boared[0] == boared[8]) {
      return boared[0];
    }

    if (boared[2] != '' && boared[2] == boared[4] && boared[2] == boared[6]) {
      return boared[2];
    }
    
  bool isDraw = boared.every((element) => element != '');
    if (isDraw) {
      return 'draw';
    }
    // ignore: prefer_const_constructors
    return '';
    
  }
  
}