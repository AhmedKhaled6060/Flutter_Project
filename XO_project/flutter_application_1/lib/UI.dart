import 'package:flutter/material.dart';
import 'Logic.dart';

class UI extends StatefulWidget {
  const UI({super.key});

  @override
  _UIState createState() => _UIState();
}

class _UIState extends State<UI> {
  gaim g = gaim();

  @override
  void initState() {
    g.boared = gaim().initlist();
    super.initState();
  }

  bool winner = false;
  int turn = 1;
  String player = 'X';
  String player2 = 'O';
  String playerturn = 'X';
  String winnerplayer='';

void _checkwinner(){
  String result=g.checkWinner();
  if(result!=''){
    setState(() {
      winner=true;
      winnerplayer=result;
    });
  }
}
 void _resetGame() {
    setState(() {
      g.boared = gaim().initlist();
      winner = false;
      playerturn = 'X';
      winnerplayer = '';
    });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            winner ? "THE WINNER IS $winnerplayer" : '$playerturn\'s turn'  ,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
         
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(9, (index) {
                return InkWell(
                  onTap: winner
                      ? null
                      : () {
                          if (g.boared[index] == '') {
                            setState(() {
                              g.boared[index] = playerturn;
                              playerturn = playerturn == 'X' ? 'O' : 'X';
                            });
                             _checkwinner();
                          }
                        },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        '${g.boared[index]}',
                        style: TextStyle(fontSize: 80, color: Colors.black),
                      ),
                    ),
                  ),
                );
              }),
            ),
            
          ),
      ElevatedButton(onPressed:(){_resetGame();}, child:Text('RESTART THE GAME')),  ],
      ),
    );
  }
}

