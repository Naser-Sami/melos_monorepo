import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';

class LiquidGlassUiKit extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;
  final double thickness;

  const LiquidGlassUiKit({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.thickness = 20,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: LiquidGlassLayer(
        settings: settings,
        child: LiquidGlass.inLayer(
          // Superellipse looks closest to Apple’s blobs.
          shape: LiquidRoundedSuperellipse(
            borderRadius: const Radius.circular(20),
          ),
          child: child,
        ),
      ),
    );
  }

  LiquidGlassSettings get settings => LiquidGlassSettings(
    thickness: thickness,
    blur: 4,
    blend: 20,
    glassColor: Color(0x22FFFFFF),
    lightAngle: math.pi * .5,
    lightIntensity: 1,
    ambientStrength: .4,
  );
}
