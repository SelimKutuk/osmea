/// 🔄 OSMEA Loading Enums
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components
///
/// Comprehensive enum definitions for loading components.
///
/// {@category Enums}
/// {@subCategory Loading}
///
/// Enums:
/// * 🔲 LoadingSize - Size variants for loading indicators
/// * 🔄 LoadingType - Animation types for loading indicators
///
/// Example usage:
/// ```dart
/// OsmeaComponents.loading(type: LoadingType.rotatingDots, size: 36);
/// ```

// ignore_for_file: constant_identifier_names

enum LoadingSize {
  /// 🔹 Extra Small - Minimal loading indicator (16px)
  extraSmall,

  /// 🔸 Small - Compact loading indicator (24px)
  small,

  /// 🔶 Medium - Standard loading indicator (32px)
  medium,

  /// 🔷 Large - Prominent loading indicator (48px)
  large,

  /// 🔵 Extra Large - Hero loading indicator (64px)
  extraLarge,
}

enum LoadingType {
  /// 🔄 Circular fade animation (classic spinner)
  circularFade,

  /// ●●● Bouncing dots animation (three dots bouncing)
  bouncingDots,

  /// ▓▓▓ Wave bars animation (bars moving in wave)
  waveBars,

  /// ◐ Chasing dots animation (dots chasing in a circle)
  chasingDots,

  /// ◑ Dual ring animation (two rings spinning)
  dualRing,

  /// ● Zigzag dots animation (dots moving in zigzag)
  zigzagDots,

  /// ●●● Triple bounce animation (three balls bouncing)
  tripleBounce,

  /// ◯ Dot circle animation (dots forming a circle)
  dotCircle,

  /// ▮▮▮ Bar loader animation (bars growing/shrinking)
  barLoader,

  /// ◌ Fading circle animation (dots fading in/out in a circle)
  fadingCircle,

  /// ◉ Rotating dots animation (dots rotating around center)
  rotatingDots,

  /// ▢ Dancing squares animation (squares moving up/down)
  dancingSquares,

  /// ⚛️ Atom animation (dots orbiting like an atom)
  atom,

  /// ⦿ Orbit dot animation (single dot orbiting)
  orbitDot,

  /// 🌀 Spiral animation (dots moving in spiral)
  spiral,

  /// ⟳ Rotating arcs animation (arcs spinning)
  rotatingArcs,

  /// ▦ Grid pulse animation (grid of dots pulsing)
  gridPulse,

  /// ⭕ Arc loader animation (arc spinning)
  arcLoader,

  /// ● Dot flash animation (dots flashing in sequence)
  dotFlash,

  /// ▄ Bar wave animation (bars moving in wave)
  barWave,
}
