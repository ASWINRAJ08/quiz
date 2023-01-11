import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/score.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Hom extends StatefulWidget {
  const Hom({Key? key}) : super(key: key);

  @override
  State<Hom> createState() => _HomState();
}

class _HomState extends State<Hom> {
  String test = 'answer';
  String odi = 'answer';
  String t20 = 'answer';
  String triple100 = 'answer';
  String century = 'answer';
  Future<void> saveData()async {
    SharedPreferences spname = await SharedPreferences.getInstance();
    spname.setString('1', test);
    spname.setString('2', odi);
    spname.setString('3', t20);
    spname.setString('4', triple100);
    spname.setString('5', century);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 260,
                      width: 350,
                      decoration: BoxDecoration(
                        color: CupertinoColors.opaqueSeparator,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 10),
                            child: Text(('1. India played first test match against ________ . ?')),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Radio(
                                    value: 'England',
                                    groupValue: test,
                                    onChanged: (v){
                                      setState(() {
                                        test = v! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('England'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Radio(
                                    value: 'Australia',
                                    groupValue: test,
                                    onChanged: (value){
                                      setState(() {
                                        test = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Australia'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Radio(
                                    value: 'South Africa',
                                    groupValue: test,
                                    onChanged: (value){
                                      setState(() {
                                        test = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('South Africa'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Radio(
                                    value: 'Pakistan',
                                    groupValue: test,
                                    onChanged: (value){
                                      setState(() {
                                        test = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Pakistan'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 270,
                      width: 350,
                      decoration: BoxDecoration(
                          color: CupertinoColors.opaqueSeparator,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 10,left: 20),
                            child: Text(('2. India played their first ODI match against_______. ?')),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Radio(
                                    value: 'England',
                                    groupValue: odi,
                                    onChanged: (value){
                                      setState(() {
                                        odi = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('England'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Radio(
                                    value: 'Australia',
                                    groupValue: odi,
                                    onChanged: (value){
                                      setState(() {
                                        odi = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Australia'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Radio(
                                    value: 'South Africa',
                                    groupValue: odi,
                                    onChanged: (value){
                                      setState(() {
                                        odi = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('South Africa'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Radio(
                                    value: 'Pakistan',
                                    groupValue: odi,
                                    onChanged: (value){
                                      setState(() {
                                        odi = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Pakistan'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 270,
                      width: 350,
                      decoration: BoxDecoration(
                          color: CupertinoColors.opaqueSeparator,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 10,left: 20),
                            child: Text(('3. India played their first T20 match against_______. ?')),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Radio(
                                    value: 'England',
                                    groupValue: t20,
                                    onChanged: (value){
                                      setState(() {
                                        t20 = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('England'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Radio(
                                    value: 'Australia',
                                    groupValue: t20,
                                    onChanged: (value){
                                      setState(() {
                                        t20 = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Australia'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Radio(
                                    value: 'South Africa',
                                    groupValue: t20,
                                    onChanged: (value){
                                      setState(() {
                                        t20 = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('South Africa'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Radio(
                                    value: 'Pakistan',
                                    groupValue: t20,
                                    onChanged: (value){
                                      setState(() {
                                        t20 = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Pakistan'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 270,
                      width: 350,
                      decoration: BoxDecoration(
                          color: CupertinoColors.opaqueSeparator,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 10,left: 20),
                            child: Text(('4. Which of the following is first cricketer to score a triple century in test cricket ?')),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Radio(
                                    value: 'Virendra Sehwag',
                                    groupValue: triple100,
                                    onChanged: (value){
                                      setState(() {
                                        triple100 = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Virendra Sehwag'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Radio(
                                    value: 'Kapil Dev',
                                    groupValue: triple100,
                                    onChanged: (value){
                                      setState(() {
                                        triple100 = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Kapil Dev'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Radio(
                                    value: 'Rohith Sharma',
                                    groupValue: triple100,
                                    onChanged: (value){
                                      setState(() {
                                        triple100 = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Rohith Sharma'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Radio(
                                    value: 'Sachin Tendulkar',
                                    groupValue: triple100,
                                    onChanged: (value){
                                      setState(() {
                                        triple100 = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Sachin Tendulkar'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 270,
                      width: 350,
                      decoration: BoxDecoration(
                          color: CupertinoColors.opaqueSeparator,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 10,left: 20),
                            child: Text(('5. Which of the following is first Indian to score double century in ODI ?')),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Radio(
                                    value: 'Rohit Sharma',
                                    groupValue: century,
                                    onChanged: (value){
                                      setState(() {
                                        century = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Rohit Sharma'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Radio(
                                    value: 'Mahendra Singh Dhoni',
                                    groupValue: century,
                                    onChanged: (value){
                                      setState(() {
                                        century = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Mahendra Singh Dhoni'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Radio(
                                    value: 'Ravindra Jadeja',
                                    groupValue: century,
                                    onChanged: (value){
                                      setState(() {
                                        century = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Ravindra Jadeja'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:20),
                                child: Radio(
                                    value: 'Sachin Tendulkar',
                                    groupValue: century,
                                    onChanged: (value){
                                      setState(() {
                                        century = value! ;
                                      });//selected value
                                    }
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Sachin Tendulkar'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: InkWell(onTap: () async {
                      await saveData();
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Scor();
                      },));
                    },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(child: Text(
                            style: TextStyle(
                                color: Colors.white),
                            'SUBMIT')),
                      ),
                    )
                ),

              ],
            ),
          )),
    );
  }
}
