import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:web_with_flutter/utils/hieght_width.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showDiscovery = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Portal(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('Discovery example')),
          body: const SizedBox(),
          floatingActionButton: Discovery(
            visible: showDiscovery,
            description: const Text(''),
            onClose: () => setState(() => showDiscovery = false),
            child: FloatingActionButton(
              onPressed: () {
                setState(() => showDiscovery = !showDiscovery);
              },
              child: const Icon(Icons.add),
            ),
          ),
        ),
      ),
    );
  }
}

class Discovery extends StatelessWidget {
  const Discovery({
    super.key,
    required this.visible,
    required this.onClose,
    required this.description,
    required this.child,
  });

  final Widget child;
  final Widget description;
  final bool visible;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return Barrier(
      visible: visible,
      onClose: onClose,
      child: PortalTarget(
        visible: visible,
        closeDuration: kThemeAnimationDuration,
        anchor: const Aligned(
          target: Alignment.center,
          follower: Alignment.center,
        ),
        portalFollower: Stack(
          children: [
            CustomPaint(
              painter: HolePainter(Theme.of(context).colorScheme.secondary),
              child: TweenAnimationBuilder<double>(
                duration: kThemeAnimationDuration,
                curve: Curves.easeOut,
                tween: Tween(begin: 50, end: visible ? 200 : 50),
                builder: (context, radius, _) {
                  return Padding(
                    padding: EdgeInsets.all(radius),
                    child: child,
                  );
                },
              ),
            ),
            Positioned(
              top: 20,
              left: 160,
              child: Transform.rotate(
                angle: 0,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "General",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    )),
              ),
            ),
            Positioned(
              left: 105,
              top: 80,
              child: Transform.rotate(
                angle: 0,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Mapping",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    )),
              ),
            ),
            Positioned(
              left: 55,
              top: 145,
              child: Transform.rotate(
                angle: 0,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Design",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    )),
              ),
            ),
            Positioned(
              left: 20,
              top: 180,
              child: Transform.rotate(
                angle: 0,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Preview",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    )),
              ),
            ),
            Positioned(
              top: 80,
              left: 60,
              child: TweenAnimationBuilder<double>(
                duration: kThemeAnimationDuration,
                curve: Curves.easeOut,
                tween: Tween(begin: 0, end: visible ? 1 : 0),
                builder: (context, opacity, _) {
                  return Opacity(
                    opacity: opacity,
                    child: Container(),
                  );
                },
              ),
            )
          ],
        ),
        child: child,
      ),
    );
  }
}

class HolePainter extends CustomPainter {
  const HolePainter(this.color);

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = color;

    final center = Offset(size.width / 2, size.height / 2);

    canvas.drawPath(
      Path.combine(
        PathOperation.difference,
        Path()
          ..addOval(Rect.fromCircle(center: center, radius: size.width / 2)),
        Path()
          ..addOval(Rect.fromCircle(center: center, radius: 40))
          ..close(),
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(HolePainter oldDelegate) {
    return color != oldDelegate.color;
  }
}

class Barrier extends StatelessWidget {
  const Barrier({
    Key? key,
    required this.onClose,
    required this.visible,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onClose;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return PortalTarget(
      visible: visible,
      closeDuration: kThemeAnimationDuration,
      portalFollower: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onClose,
        child: TweenAnimationBuilder<Color>(
          duration: kThemeAnimationDuration,
          tween: ColorTween(
            begin: Colors.transparent,
            end: visible ? Colors.black54 : Colors.transparent,
          ),
          builder: (context, color, child) {
            return ColoredBox(color: color);
          },
        ),
      ),
      child: child,
    );
  }
}

/// Non-nullable version of ColorTween.
class ColorTween extends Tween<Color> {
  ColorTween({required Color begin, required Color end})
      : super(begin: begin, end: end);

  @override
  Color lerp(double t) => Color.lerp(begin, end, t)!;
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
        size.width / 2,
        size.height - 50,
        size.width,
        size.height,
      )
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
