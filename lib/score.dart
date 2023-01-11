import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Scor extends StatefulWidget {
  const Scor({Key? key}) : super(key: key);

  @override
  State<Scor> createState() => _ScorState();
}

class _ScorState extends State<Scor> {
  var a;
  var b;
  var c;
  var d;
  var e;
  var mark = 0;
  Future<void> getData()async {
    SharedPreferences spname = await SharedPreferences.getInstance();
    a = spname.getString('1');
    b = spname.getString('2');
    c = spname.getString('3');
    d = spname.getString('4');
    e = spname.getString('5');
  }
  getMark(){
    if(a=='England'){
      mark++;
    }
    if(b=='England'){
      mark++;
    }
    if(c=='South Africa'){
      mark++;
    }
    if(d=='Virendra Sehwag'){
      mark++;
    }
    if(e=='Sachin Tendulkar'){
      mark++;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: FutureBuilder(
            future: getData(),
            builder: (context,snapshot) {
            return Column(
              children: [
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: Text('SCORE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.green),),
                )),
                Container(
                  height: 100,
                  width: 100,
                  child: Center(
                      child: FutureBuilder(
                        future: getMark(),
                        builder: (context, snapshot) {
                        return Text(mark.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                              fontSize: 30),);
                        },
                      )
    ),
                )
              ],
            );
          },
          ) ),
    );
  }
}
