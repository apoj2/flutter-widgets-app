import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({
    super.key,
  });

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = false;
  Transportation selectedTransportation = Transportation.boat;

  bool wanstBreakFast = false;
  bool roomGames = false;
  bool ageforPlaying = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        Switch(
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        SwitchListTile(
            title: const Text('Tiene Transporte'),
            subtitle:
                const Text('Si el desarrollador dispone de vehiculo acepta'),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),
        Align(
          alignment: Alignment.topLeft,
          child: Radio(
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (_) => setState(() {
                    selectedTransportation = Transportation.car;
                  })),
        ),
        Radio(
            value: Transportation.boat,
            groupValue: selectedTransportation,
            onChanged: (_) => setState(() {
                  selectedTransportation = Transportation.boat;
                })),
        Radio(
            value: Transportation.plane,
            groupValue: selectedTransportation,
            onChanged: (_) => setState(() {
                  selectedTransportation = Transportation.plane;
                })),
        Radio(
            value: Transportation.submarine,
            groupValue: selectedTransportation,
            onChanged: (_) => setState(() {
                  selectedTransportation = Transportation.submarine;
                })),
        ExpansionTile(
          title: const Text('expansion 2'),
          children: [
            RadioListTile(
                title: const Text('Seleccionar'),
                subtitle: Text(
                    'Selecciona en case que tengas ${Transportation.car} '),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (_) => setState(() {
                      selectedTransportation = Transportation.car;
                    })),
            RadioListTile(
                title: const Text('Seleccionar'),
                subtitle: Text(
                    'Selecciona en case que tengas ${Transportation.boat} '),
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: (_) => setState(() {
                      selectedTransportation = Transportation.boat;
                    })),
            RadioListTile(
                title: const Text('Seleccionar'),
                subtitle: Text(
                    'Selecciona en case que tengas ${Transportation.plane} '),
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: (_) => setState(() {
                      selectedTransportation = Transportation.plane;
                    })),
            RadioListTile(
                title: const Text('Seleccionar'),
                subtitle: Text(
                    'Selecciona en case que tengas ${Transportation.submarine} '),
                value: Transportation.submarine,
                groupValue: selectedTransportation,
                onChanged: (_) => setState(() {
                      selectedTransportation = Transportation.submarine;
                    }))
          ],
        ),
        CheckboxListTile(
            title: const Text('¿Desayuno?'),
            value: wanstBreakFast,
            onChanged: (_) => setState(() {
                  wanstBreakFast = !wanstBreakFast;
                })),
        CheckboxListTile(
            title: const Text('¿Tiene Salon de Juegos?'),
            value: roomGames,
            onChanged: (_) => setState(() {
                  roomGames = !roomGames;
                })),
        CheckboxListTile(
            title: const Text('¿Es Mayor de 18 años?'),
            value: ageforPlaying,
            onChanged: (_) => setState(() {
                  ageforPlaying = !ageforPlaying;
                }))
      ],
    );
  }
}
