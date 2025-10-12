/// 🎙️ OSMEA Sound Dialog Examples
///
/// Copyright (c) 2025, OSMEA Team
/// https://github.com/masterfabric-mobile/osmea/tree/dev/packages/components
///
/// Showcases all available sound recording dialogs with live demo buttons,
/// demonstrating the simple, encapsulated usage of the OsmeaSoundDialog component.
///
/// {@category Examples}
/// {@subCategory Dialog}

import 'package:flutter/material.dart';
import 'package:osmea_components/osmea_components.dart';

class SoundDialogExample extends StatelessWidget {
  const SoundDialogExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // A list defining all available dialog variants to be displayed.
    // This makes the example page dynamic and easy to extend.
    final List<Map<String, dynamic>> dialogTypes = [
      {
        'variant': SoundDialogVariant.standard,
        'label': 'Standard Sound Dialog',
        'desc':
            'A minimal, classic dialog for recording voice input. Includes start, pause, stop, and cancel options.',
        'icon': Icons.mic,
      },
      {
        'variant': SoundDialogVariant.expandable,
        'label': 'Expandable Sound Dialog',
        'desc':
            'An advanced version with dynamic sound wave visualization, pause/resume control, and elegant transitions.',
        'icon': Icons.graphic_eq,
      },
      {
        'variant': SoundDialogVariant.inlineSearchBar,
        'label': 'Inline SearchBar Dialog',
        'desc':
            'A minimal variant designed to appear inside the search bar for quick voice input.',
        'icon': Icons.search,
      },
      {
        'variant': SoundDialogVariant.feedbackRecorder,
        'label': 'Feedback Recorder Dialog',
        'desc':
            'Allows users to record, then review and confirm their voice feedback before sending.',
        'icon': Icons.reviews,
      }
    ];

    // Added more colors for the new variants.
    final List<Color> colors = [
      OsmeaColors.nordicBlue,
      OsmeaColors.amberFlame,
      OsmeaColors.meadow,
      OsmeaColors.sunsetGlow,
    ];

    void showSnackBar(String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          behavior: SnackBarBehavior.floating,
          backgroundColor: OsmeaColors.nordicBlue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      );
    }

    // This function now directly uses the self-contained OsmeaSoundDialog widget.
    // The component handles its own state internally.
    void openDialog(SoundDialogVariant variant) {
      showDialog<void>(
        context: context,
        builder: (dialogContext) {
          return OsmeaComponents.soundDialogWidget(
            variant: variant,
            onCancel: () => showSnackBar('Recording Cancelled ❌'),
            onConfirm: (path) => showSnackBar('Saved/Result: $path ✅'),
          );
        },
      );
    }

    return OsmeaComponents.scaffold(
      backgroundColor: OsmeaColors.white,
      appBar: OsmeaComponents.appBar(
        title: const Text('Sound Dialog Examples'),
      ),
      body: OsmeaComponents.padding(
        padding: const EdgeInsets.all(20),
        child: OsmeaComponents.singleChildScrollView(
          child: OsmeaComponents.column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OsmeaComponents.text(
                'OSMEA Sound Dialogs',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              OsmeaComponents.sizedBox(height: 12),
              OsmeaComponents.text(
                'Below are all the sound recording dialogs available in the OSMEA library. Each card demonstrates a unique variant.',
                fontSize: 16,
                color: OsmeaColors.grey[700],
              ),
              OsmeaComponents.sizedBox(height: 24),
              // The loop now dynamically builds cards for all four variants.
              for (int i = 0; i < dialogTypes.length; i++)
                Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: OsmeaComponents.padding(
                    padding: const EdgeInsets.all(20),
                    child: OsmeaComponents.column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OsmeaComponents.row(
                          children: [
                            Icon(dialogTypes[i]['icon'],
                                color: colors[i % colors.length], size: 28),
                            OsmeaComponents.sizedBox(width: 12),
                            OsmeaComponents.text(
                              dialogTypes[i]['label'],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        OsmeaComponents.sizedBox(height: 8),
                        OsmeaComponents.text(
                          dialogTypes[i]['desc'],
                          fontSize: 15,
                          color: OsmeaColors.grey[700],
                        ),
                        OsmeaComponents.sizedBox(height: 20),
                        Center(
                          child: OsmeaComponents.button(
                            text: 'Open Dialog',
                            size: ButtonSize.medium,
                            variant: ButtonVariant.primary,
                            icon: Icon(dialogTypes[i]['icon'], size: 18),
                            onPressed: () =>
                                openDialog(dialogTypes[i]['variant']),
                            backgroundColor: colors[i % colors.length],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
