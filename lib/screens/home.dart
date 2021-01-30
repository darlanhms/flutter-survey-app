import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Survey App"),
      ),
      backgroundColor: Color(0xFFF4F6FA),
      body: _HomeBody(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          _TokenAnswer(),
          _SectionDivisor(),
          _BuildSurvey(),
        ],
      ),
    );
  }
}

class _TokenAnswer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _TitleSection("Answer with token"),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Place your token here",
              hintStyle: TextStyle(
                color: Color(0xFFCFCFCF),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _BuildSurvey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _TitleSection("Build you're own"),
        _ButtonBuild(),
      ],
    );
  }
}

class _TitleSection extends StatelessWidget {
  final String _title;

  _TitleSection(this._title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(2, 0, 0, 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          _title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}

class _ButtonBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 42,
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.grey[100];
              }
              return Colors.grey[900];
            },
          ),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: <Widget>[
              Icon(
                Icons.brush,
                color: Colors.white,
              ),
              Text(
                "Build from scratch",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}

class _SectionDivisor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 32),
    );
  }
}
