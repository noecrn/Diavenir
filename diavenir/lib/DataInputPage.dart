// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:diavenir/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DataInputPage extends StatefulWidget {
  const DataInputPage({super.key});

  @override
  _DataInputPageState createState() => _DataInputPageState();
}

class _DataInputPageState extends State<DataInputPage> {
  late String nom;
  late String prenom;
  late String genre = 'Homme';
  late double poids;
  late double taille;
  late double HbA1c;
  late double perimetre_abdominal;
  late double LDL_cholesterol;
  late double activite_physique;
  late double tension_artherielle; //input: "_/_" on utilise que le premier
  late double fonction_renale;
  bool tabac = false;
  bool alcool = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Donées de santé',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat',
            color: Color.fromRGBO(49, 100, 232, 1)
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              cursorColor: Color.fromRGBO(49, 100, 232, 1),
              decoration: const InputDecoration(
                labelText: 'Nom',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(49, 100, 232, 1),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  nom = value;
                });
              },
            ),
            const SizedBox(height: 16.0,),
            TextField(
              cursorColor: Color.fromRGBO(49, 100, 232, 1),
              decoration: const InputDecoration(
                labelText: 'Prénom',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(49, 100, 232, 1),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  prenom = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              cursorColor: Color.fromRGBO(49, 100, 232, 1),
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Poids (kg)',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(49, 100, 232, 1),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  value = value.replaceAll(',', '.');
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue != null) {
                    poids = parsedValue;
                  } else {
                    poids = 0.0;
                  }
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              cursorColor: Color.fromRGBO(49, 100, 232, 1),
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Taille (cm)',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(49, 100, 232, 1),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  value = value.replaceAll(',', '.');
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue != null) {
                    taille = parsedValue;
                  } else {
                    taille = 0.0;
                  }
                });
              },
            ),
            const SizedBox(height: 16.0),
            DropdownButton<String>(
              value: genre,
              items: <String>['Homme', 'Femme'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: DefaultTextStyle(
                    style: TextStyle(color: Color.fromRGBO(49, 100, 232, 1)),
                    child: Text(value),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  genre = newValue!;
                });
              },
            ),
            TextField(
              cursorColor: Color.fromRGBO(49, 100, 232, 1),
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'tension artherielle (mmHg)',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(49, 100, 232, 1),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  value = value.replaceAll(',', '.');
                  double? parsedValue = double.tryParse(value);
                  if (parsedValue != null) {
                    tension_artherielle = parsedValue;
                  } else {
                    tension_artherielle = 0.0;
                  }
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Fumeur', style: TextStyle(color: Color.fromRGBO(49, 100, 232, 1))),
              value: tabac,
              activeColor: Color.fromRGBO(49, 100, 232, 1),
              onChanged: (value) {
                setState(() {
                  tabac = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Alcool', style: TextStyle(color: Color.fromRGBO(49, 100, 232, 1))),
              value: alcool,
              activeColor: Color.fromRGBO(49, 100, 232, 1),
              onChanged: (value) {
                setState(() {
                  alcool = value!;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: const Text('Prochaine étape', style: TextStyle(color: Color.fromRGBO(49, 100, 232, 1))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage(poids: poids)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}