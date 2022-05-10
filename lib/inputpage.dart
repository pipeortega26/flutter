/*import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const consh = 80.0;
var activecard = Color.fromARGB(255, 246, 246, 246);
var inactivecard = Color.fromARGB(2555, 40, 40, 40);
const butcolor = Color.fromARGB(255, 103, 11, 11);
var maleCardColour = Color.fromARGB(2555, 40, 40, 40);
var femaleCardColour = Color.fromARGB(2555, 40, 40, 40);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color male = inactivecard;
  Color girl = inactivecard;

  void update(int cl) {
    if (cl == 1) {
      if (male == inactivecard) {
        male = activecard;
      } else {
        male = inactivecard;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColour(Gender.male);
                  });
                },
                child: Reusable(
                  colour: maleCardColour,
                  content:
                      ReusableIcon(icon: FontAwesomeIcons.mars, label: 'Male'),
                ),
              )),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(Gender.female);
                    });
                  },
                  child: Reusable(
                    colour: femaleCardColour,
                    content: ReusableIcon(
                        icon: FontAwesomeIcons.mars, label: 'Female'),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(Gender.male);
                    });
                  },
                  child: Reusable(
                    colour: maleCardColour,
                    content: ReusableIcon(
                        icon: FontAwesomeIcons.mars, label: 'Male'),
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: Reusable(
                colour: activecard,
                content:
                    ReusableIcon(icon: FontAwesomeIcons.mars, label: 'Male'),
              )),
              Expanded(
                  child: Reusable(
                colour: activecard,
                content:
                    ReusableIcon(icon: FontAwesomeIcons.mars, label: 'Male'),
              )),
            ],
          )),
          Container(
            color: Color.fromARGB(255, 118, 0, 59),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: consh,
          )
        ],
      ),
    );
  }
}

enum Gender { male, female }

void updateColour(Gender selectedGender) {
  if (selectedGender == Gender.male) {
    if (maleCardColour == inactivecard) {
      maleCardColour = activecard;
      femaleCardColour = inactivecard;
    } else {
      maleCardColour = inactivecard;
    }
  }

  if (selectedGender == Gender.female) {
    if (femaleCardColour == inactivecard) {
      femaleCardColour = activecard;
      maleCardColour = inactivecard;
    } else {
      femaleCardColour = inactivecard;
    }
  }
}

class Reusable extends StatelessWidget {
  Reusable({@required this.colour = Colors.black, required this.content});
  final Color colour;
  final Widget content;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: content,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

class ReusableIcon extends StatelessWidget {
  ReusableIcon({required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 150.0,
        ),
        SizedBox(height: 15.0),
        Text(label, style: TextStyle(fontSize: 18.0, color: Colors.white)),
      ],
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const consh = 80.0;
var activecard = Color.fromARGB(255, 246, 246, 246);
var inactivecard = Color.fromARGB(2555, 40, 40, 40);
const butcolor = Color.fromARGB(255, 103, 11, 11);
var maleCardColour = Color.fromARGB(2555, 40, 40, 40);
var femaleCardColour = Color.fromARGB(2555, 40, 40, 40);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { maybe, male, female }

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.maybe;
  Color male = inactivecard;
  Color female = inactivecard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender == Gender.male;
                  });
                },
                child: Reusable(
                  colour:
                      selectedGender == Gender.male ? activecard : inactivecard,
                  content:
                      ReusableIcon(icon: FontAwesomeIcons.mars, label: 'Male'),
                ),
              )),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender == Gender.female;
                    });
                  },
                  child: Reusable(
                    colour: selectedGender == Gender.female
                        ? activecard
                        : inactivecard,
                    content: ReusableIcon(
                        icon: FontAwesomeIcons.mars, label: 'Female'),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender == Gender.male;
                    });
                  },
                  child: Reusable(
                    colour: selectedGender == Gender.male
                        ? activecard
                        : inactivecard,
                    content: ReusableIcon(
                        icon: FontAwesomeIcons.mars, label: 'Male'),
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: Reusable(
                colour: activecard,
                content:
                    ReusableIcon(icon: FontAwesomeIcons.mars, label: 'Male'),
              )),
              Expanded(
                  child: Reusable(
                colour: activecard,
                content:
                    ReusableIcon(icon: FontAwesomeIcons.mars, label: 'Male'),
              )),
            ],
          )),
          Container(
            color: Color.fromARGB(255, 118, 0, 59),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: consh,
          )
        ],
      ),
    );
  }
}

/*void updateColour(Gender selectedGender) {
  if (selectedGender == Gender.male) {
    if (maleCardColour == inactivecard) {
      maleCardColour = activecard;
      femaleCardColour = inactivecard;
    } else {
      maleCardColour = inactivecard;
    }
  }

  if (selectedGender == Gender.female) {
    if (femaleCardColour == inactivecard) {
      femaleCardColour = activecard;
      maleCardColour = inactivecard;
    } else {
      femaleCardColour = inactivecard;
    }
  }
}*/

class Reusable extends StatelessWidget {
  Reusable({@required this.colour = Colors.black, required this.content});
  final Color colour;
  final Widget content;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: content,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

class ReusableIcon extends StatelessWidget {
  ReusableIcon({required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 150.0,
        ),
        SizedBox(height: 15.0),
        Text(label, style: TextStyle(fontSize: 18.0, color: Colors.white)),
      ],
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const consh = 80.0;
var activecard = Color.fromARGB(255, 246, 246, 246);
var inactivecard = Color.fromARGB(2555, 40, 40, 40);
const butcolor = Color.fromARGB(255, 103, 11, 11);
var maleCardColour = Color.fromARGB(2555, 40, 40, 40);
var femaleCardColour = Color.fromARGB(2555, 40, 40, 40);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { maybe, male, female }

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.maybe;
  Color male = inactivecard;
  Color female = inactivecard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Reusable(
              onPress: () {
                setState(() {
                  selectedGender == Gender.male;
                });
              },
              colour: selectedGender == Gender.male ? activecard : inactivecard,
              cardChild: ReusableIcon(
                icon: FontAwesomeIcons.mars,
                label: 'Male',
              ),
            ),
          ),
          Expanded(
            child: Reusable(
              onPress: () {
                setState(() {
                  selectedGender == Gender.female;
                });
              },
              colour:
                  selectedGender == Gender.female ? activecard : inactivecard,
              cardChild: ReusableIcon(
                icon: FontAwesomeIcons.mars,
                label: 'Female',
              ),
            ),
          ),
          Expanded(
            child: Reusable(
              onPress: () {
                setState(() {
                  selectedGender == Gender.male;
                });
              },
              colour: selectedGender == Gender.male ? activecard : inactivecard,
              cardChild: ReusableIcon(
                icon: FontAwesomeIcons.mars,
                label: 'Male',
              ),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 118, 0, 59),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: consh,
          )
        ],
      ),
    );
  }
}

/*void updateColour(Gender selectedGender) {
  if (selectedGender == Gender.male) {
    if (maleCardColour == inactivecard) {
      maleCardColour = activecard;
      femaleCardColour = inactivecard;
    } else {
      maleCardColour = inactivecard;
    }
  }

  if (selectedGender == Gender.female) {
    if (femaleCardColour == inactivecard) {
      femaleCardColour = activecard;
      maleCardColour = inactivecard;
    } else {
      femaleCardColour = inactivecard;
    }
  }
}*/

class Reusable extends StatelessWidget {
  Reusable(
      {required this.colour, required this.cardChild, required this.onPress});
  final Color colour;
  final Widget cardChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(14.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class ReusableIcon extends StatelessWidget {
  ReusableIcon({required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 150.0,
        ),
        SizedBox(height: 15.0),
        Text(label, style: TextStyle(fontSize: 14.0, color: Colors.white)),
      ],
    );
  }
}
