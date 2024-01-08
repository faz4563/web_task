// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:provider/provider.dart';

import '../services/tabAnimationService.dart';

class Discovery extends StatefulWidget {
  Discovery(
      {super.key,
      required this.visible,
      required this.onClose,
      required this.description,
      required this.child,
      required this.btnSelected});

  final Widget child;
  final Widget description;
  final bool visible;
  final VoidCallback onClose;
  int btnSelected;

  @override
  State<Discovery> createState() => _DiscoveryState();
}

class _DiscoveryState extends State<Discovery> {
  @override
  Widget build(BuildContext context) {
    final changeContext = Provider.of<TabAnimationService>(context);
    return Barrier(
      visible: changeContext.visible,
      onClose: widget.onClose,
      child: PortalTarget(
        visible: changeContext.visible,
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
                tween: Tween(begin: 50, end: widget.visible ? 200 : 50),
                builder: (context, radius, _) {
                  return Padding(
                    padding: EdgeInsets.all(radius),
                    child: widget.child,
                  );
                },
              ),
            ),
            Positioned(
              top: 30,
              left: 145,
              child: Transform.rotate(
                angle: 0,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: changeContext.btnPressed == 0
                          ? Colors.blue
                          : Colors.white,
                      fixedSize: const Size(120, 40),
                      side: const BorderSide(color: Colors.black, width: 1),
                    ),
                    onPressed: () {
                      setState(() {
                        changeContext.changingContext(0, false);
                      });
                    },
                    child: Text(
                      "General",
                      style: TextStyle(
                          fontSize: 14,
                          color: changeContext.btnPressed == 0
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.w800),
                    )),
              ),
            ),
            Positioned(
              left: 105,
              top: 90,
              child: Transform.rotate(
                angle: 0,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: changeContext.btnPressed == 1
                          ? Colors.blue
                          : Colors.white,
                      fixedSize: const Size(120, 40),
                      side: const BorderSide(color: Colors.black, width: 1),
                    ),
                    onPressed: () {
                      setState(() {
                        changeContext.changingContext(1, false);
                      });
                    },
                    child: Text(
                      "Mapping",
                      style: TextStyle(
                          fontSize: 14,
                          color: changeContext.btnPressed == 1
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.w800),
                    )),
              ),
            ),
            Positioned(
              left: 65,
              top: 155,
              child: Transform.rotate(
                angle: 0,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: changeContext.btnPressed == 2
                          ? Colors.blue
                          : Colors.white,
                      fixedSize: const Size(120, 40),
                      side: const BorderSide(color: Colors.black, width: 1),
                    ),
                    onPressed: () {
                      setState(() {
                        changeContext.changingContext(2, false);
                      });
                    },
                    child: Text(
                      "Design",
                      style: TextStyle(
                          fontSize: 14,
                          color: changeContext.btnPressed == 2
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.w800),
                    )),
              ),
            ),
            Positioned(
              left: 25,
              top: 220,
              child: Transform.rotate(
                angle: 0,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: changeContext.btnPressed == 3
                          ? Colors.blue
                          : Colors.white,
                      fixedSize: const Size(120, 40),
                      side: const BorderSide(color: Colors.black, width: 1),
                    ),
                    onPressed: () {
                      setState(() {
                        changeContext.changingContext(3, false);
                      });
                    },
                    child: Text(
                      "Preview",
                      style: TextStyle(
                          fontSize: 14,
                          color: changeContext.btnPressed == 3
                              ? Colors.white
                              : Colors.black,
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
                tween: Tween(begin: 0, end: widget.visible ? 1 : 0),
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
        child: widget.child,
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
    super.key,
    required this.onClose,
    required this.visible,
    required this.child,
  });

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
