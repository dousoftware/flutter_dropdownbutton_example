// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String secilenSehir = 'Sivas';

  List<String> sehirler = ['Sivas', 'Ankara', 'Karabük', 'İzmir', "Adıyaman"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        // Birinci yol(Amele işi)
        /* items: const [
          DropdownMenuItem(
            child: Text("Sivas"),
            value: 'Sivas',
          ),
          DropdownMenuItem(
            child: Text("Ankara"),
            value: 'Ankara',
          ),
          DropdownMenuItem(
            child: Text("Karabük"),
            value: 'Karabük',
          ),
          DropdownMenuItem(
            child: Text("İzmir"),
            value: 'İzmir',
          ),
        ], */
        // İkinci Yol(Profesyonel)
        items: sehirler
            .map((String oankiSehir) => DropdownMenuItem(
                  child: Text(oankiSehir),
                  value: oankiSehir,
                ))
            .toList(),
        // DropdownButton'ın görüntülenecek varsayılan değeri
        value: secilenSehir,
        onChanged: (String? yeniSecim) {
          setState(() {
            secilenSehir = yeniSecim!;
          });
        },
      ),
    );
  }
}
