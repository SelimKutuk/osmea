import 'package:flutter/material.dart';
import 'package:osmea_components/src/theme/colors.dart';

void main() {
  runApp(const OsmeaColorsShowcaseApp());
}

class OsmeaColorsShowcaseApp extends StatelessWidget {
  const OsmeaColorsShowcaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OSMEA Colors Showcase - 6 Main Colors',
      theme: ThemeData(
        primarySwatch: OsmeaColors.blueMaterial,
        primaryColor: OsmeaColors.nordicBlue,
      ),
      home: const ColorPaletteScreen(),
    );
  }
}

class ColorPaletteScreen extends StatefulWidget {
  const ColorPaletteScreen({super.key});

  @override
  State<ColorPaletteScreen> createState() => _ColorPaletteScreenState();
}

class _ColorPaletteScreenState extends State<ColorPaletteScreen> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkTheme ? OsmeaColors.void_ : OsmeaColors.snow,
      appBar: AppBar(
        title: const Text('OSMEA Color Palette - 6 Main Colors'),
        backgroundColor: OsmeaColors.nordicBlue,
        foregroundColor: OsmeaColors.white,
        actions: [
          IconButton(
            icon: Icon(isDarkTheme ? Icons.light_mode : Icons.dark_mode),
            onPressed: () {
              setState(() {
                isDarkTheme = !isDarkTheme;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMainColorsSection(),
            _buildSection('Gray Palette', [
              ColorInfo('Paper White', OsmeaColors.paperWhite),
              ColorInfo('Snow', OsmeaColors.snow),
              ColorInfo('Ash', OsmeaColors.ash),
              ColorInfo('Silver', OsmeaColors.silver),
              ColorInfo('Platinum', OsmeaColors.platinum),
              ColorInfo('Steel', OsmeaColors.steel),
              ColorInfo('Pewter', OsmeaColors.pewter),
              ColorInfo('Slate', OsmeaColors.slate),
              ColorInfo('Thunder', OsmeaColors.thunder),
              ColorInfo('Shark', OsmeaColors.shark),
              ColorInfo('Eclipse', OsmeaColors.eclipse),
              ColorInfo('Void', OsmeaColors.void_),
            ]),
            _buildSection('Blue Palette', [
              ColorInfo('Crystal Bay', OsmeaColors.crystalBay),
              ColorInfo('Ocean Mist', OsmeaColors.oceanMist),
              ColorInfo('Azure Wave', OsmeaColors.azureWave),
              ColorInfo('Nordic Blue', OsmeaColors.nordicBlue),
              ColorInfo('Deep Sea', OsmeaColors.deepSea),
              ColorInfo('Atlantic', OsmeaColors.atlantic),
              ColorInfo('Night Ocean', OsmeaColors.nightOcean),
              ColorInfo('Marine Depth', OsmeaColors.marineDepth),
              ColorInfo('Abyss', OsmeaColors.abyss),
            ]),
            _buildSection('Orange Palette', [
              ColorInfo('Desert Sand', OsmeaColors.desertSand),
              ColorInfo('Golden Hour', OsmeaColors.goldenHour),
              ColorInfo('Sunset Glow', OsmeaColors.sunsetGlow),
              ColorInfo('Amber Flame', OsmeaColors.amberFlame),
            ]),
            _buildSection('Green Palette', [
              ColorInfo('Spring Leaf', OsmeaColors.springLeaf),
              ColorInfo('Meadow', OsmeaColors.meadow),
              ColorInfo('Forest Heart', OsmeaColors.forestHeart),
              ColorInfo('Pine Grove', OsmeaColors.pineGrove),
            ]),
            _buildSection('Status Colors', [
              ColorInfo('Status Online', OsmeaColors.forestHeart),
              ColorInfo('Status Offline', OsmeaColors.pewter),
              ColorInfo('Status Away', OsmeaColors.sunsetGlow),
            ]),
            _buildSection('Core Colors', [
              ColorInfo('Pure White', OsmeaColors.white),
              ColorInfo('Pure Black', OsmeaColors.black),
              ColorInfo('Transparent', OsmeaColors.transparent),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildMainColorsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            '6 Main Colors',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: isDarkTheme ? OsmeaColors.white : OsmeaColors.eclipse,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: isDarkTheme ? OsmeaColors.shark : OsmeaColors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isDarkTheme ? OsmeaColors.thunder : OsmeaColors.ash,
            ),
          ),
          child: Wrap(
            children: [
              _buildMainColorTile('Pure White', OsmeaColors.white),
              _buildMainColorTile('Pure Black', OsmeaColors.black),
              _buildMainColorTile('Pewter', OsmeaColors.pewter),
              _buildMainColorTile('Nordic Blue', OsmeaColors.nordicBlue),
              _buildMainColorTile('Sunset Glow', OsmeaColors.sunsetGlow),
              _buildMainColorTile('Forest Heart', OsmeaColors.forestHeart),
            ],
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildMainColorTile(String name, Color color) {
    return Container(
      width: 160,
      height: 100,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isDarkTheme ? OsmeaColors.thunder : OsmeaColors.ash,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            child: Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(String title, List<ColorInfo> colors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isDarkTheme ? OsmeaColors.white : OsmeaColors.eclipse,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: isDarkTheme ? OsmeaColors.shark : OsmeaColors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isDarkTheme ? OsmeaColors.thunder : OsmeaColors.ash,
            ),
          ),
          child: Wrap(
            children:
                colors.map((colorInfo) => _buildColorTile(colorInfo)).toList(),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildColorTile(ColorInfo colorInfo) {
    return Container(
      width: 120,
      height: 80,
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: colorInfo.color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isDarkTheme ? OsmeaColors.thunder : OsmeaColors.ash,
          width: 0.5,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(4),
            child: Text(
              colorInfo.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

}

class ColorInfo {
  final String name;
  final Color color;

  ColorInfo(this.name, this.color);
}

class GradientInfo {
  final String name;
  final LinearGradient gradient;

  GradientInfo(this.name, this.gradient);
}
