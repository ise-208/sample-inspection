import 'package:flutter/material.dart';

const kColorPurple = Color(0xFF8337EC);
const kColorPink = Color(0xFFFF006F);
const kColorIndicatorBegin = kColorPink;
const kColorIndicatorEnd = kColorPurple;
const kColorTitle = Color(0xFF616161);
const kColorText = Color(0xFF9E9E9E);
const kElevation = 4.0;

class SamplePage8 extends StatefulWidget {
  @override
  _SamplePage8 createState() => _SamplePage8();
}

class _SamplePage8 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BO"),
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OptimizerButton(),
            BatteryLevelIndicatorPainter(),
            AppsDrainage(),
          ],
        ),
      ),
    );
  }
}

class _OptimizerButton extends StatelessWidget {
  final String text;

  const _OptimizerButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          // primary: Colors.white,
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: kColorTitle, fontSize: 12),
      ),
    );
  }
}

class OptimizerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: const [
            SizedBox(width: 16),
            _OptimizerButton(text: "A"),
          ],
        ),
      ),
    );
  }
}

class _BatteryLevelIndicatorPainter extends CustomPainter {
  final double percentage;
  final double textCircleRadius;

  _BatteryLevelIndicatorPainter({
    required this.percentage,
    required this.textCircleRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 1; i < (360 * percentage); i += 5) {
      final per = i / 360.0;
      final color = ColorTween(
        begin: kColorIndicatorBegin,
        end: kColorIndicatorEnd,
      ).lerp(per)!;

      final paint = Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw false;
  }
}

class BatteryLevelIndicatorPainter extends StatelessWidget {
  final percentage = 0.7;
  final size = 164.0;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _BatteryLevelIndicatorPainter(
        percentage: percentage,
        textCircleRadius: size * 0.5,
      ),
      child: Container(
        padding: const EdgeInsets.all(64),
        child: Material(
          color: Colors.white,
          elevation: kElevation,
          borderRadius: BorderRadius.circular(size * 0.5),
          child: Container(
            width: size,
            height: size,
            child: Center(
              child: Text(
                '${percentage * 100} %',
                style: TextStyle(color: kColorPink, fontSize: 48),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _HorizontalBorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      margin: EdgeInsets.symmetric(horizontal: 16),
      color: Colors.grey[200],
    );
  }
}

class _AppColumn extends StatelessWidget {
  final String name;
  final Icon icon;
  final String percentage;

  const _AppColumn({
    Key? key,
    required this.name,
    required this.icon,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        name,
        style: TextStyle(color: kColorText),
      ),
      trailing: Text(
        percentage,
        style: TextStyle(color: kColorText),
      ),
    );
  }
}

class AppsDrainage extends StatelessWidget {
  const AppsDrainage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: ClipOval(
            child: Container(
              color: kColorPurple,
              child: Icon(Icons.apps, color: Colors.white),
            ),
          ),
          title: Text(
            "Drainage",
            style: TextStyle(color: kColorTitle),
          ),
          subtitle: Text(
            "app",
            style: TextStyle(color: kColorText),
          ),
        ),
        Material(
          color: Colors.white,
          elevation: kElevation,
          borderRadius: BorderRadius.circular(16),
          child: Column(
            children: [
              const _AppColumn(
                name: "Aapp",
                icon: Icon(Icons.sms),
                percentage: "75%",
              ),
              _HorizontalBorder(),
              const _AppColumn(
                name: "Bapp",
                icon: Icon(Icons.live_tv, color: Colors.red),
                percentage: "75%",
              ),
              _HorizontalBorder(),
            ],
          ),
        )
      ],
    );
  }
}
