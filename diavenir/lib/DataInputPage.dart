// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:diavenir/meteo_des_emotions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DataInputPage extends StatefulWidget {
  @override
  _DataInputPageState createState() => _DataInputPageState();
}

class _DataInputPageState extends State<DataInputPage> {
  late String nom = "";
  late String prenom = "";
  late String genre = 'Homme';
  late double poids = 0.0;
  late double taille = 0.0;
  late double HbA1c = 0.0;
  late double perimetre_abdominal = 0.0;
  late double LDL_cholesterol = 0.0;
  late double activite_physique = 0.0;
  late String tension_artherielle = ""; //input: "_/_" on utilise que le premier
  late double fonction_renale = 0.0;
  bool tabac = false;
  late String? tabac_type = 'Fumeur actif';
  bool alcool = false;
  late double alcool_type = 0.0;

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
      body: SingleChildScrollView(
        child: Padding(
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
                    tension_artherielle = value;
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
              DropdownButton<String>(
                value: tabac_type,
                items: <String>['Fumeur actif', 'sevré de moins de 10 ans', 'sevré de plus de 10 ans'].map((String value) {
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
                    tabac_type = newValue!;
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
              if (alcool)
                TextField(
                  cursorColor: Color.fromRGBO(49, 100, 232, 1),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Consommation d\'alcool (verres/semaine)',
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(49, 100, 232, 1),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      value = value.replaceAll(',', '.');
                      double? parsedValue = double.tryParse(value);
                      if (parsedValue != null) {
                        activite_physique = parsedValue;
                      } else {
                        activite_physique = 0.0;
                      }
                    });
                  },
                ),
              const SizedBox(height: 16.0),
              TextField(
                cursorColor: Color.fromRGBO(49, 100, 232, 1),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'activité physique (min/semaine)',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(49, 100, 232, 1),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    value = value.replaceAll(',', '.');
                    double? parsedValue = double.tryParse(value);
                    if (parsedValue != null) {
                      activite_physique = parsedValue;
                    } else {
                      activite_physique = 0.0;
                    }
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextField(
                cursorColor: Color.fromRGBO(49, 100, 232, 1),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'perimètre abdominal (cm)',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(49, 100, 232, 1),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    value = value.replaceAll(',', '.');
                    double? parsedValue = double.tryParse(value);
                    if (parsedValue != null) {
                      perimetre_abdominal = parsedValue;
                    } else {
                      perimetre_abdominal = 0.0;
                    }
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextField(
                cursorColor: Color.fromRGBO(49, 100, 232, 1),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Fonction rénale (ml/min/1.73m2)',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(49, 100, 232, 1),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    value = value.replaceAll(',', '.');
                    double? parsedValue = double.tryParse(value);
                    if (parsedValue != null) {
                      fonction_renale = parsedValue;
                    } else {
                      fonction_renale = 0.0;
                    }
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextField(
                cursorColor: Color.fromRGBO(49, 100, 232, 1),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'ldl cholesterol (mmol/L)',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(49, 100, 232, 1),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    value = value.replaceAll(',', '.');
                    double? parsedValue = double.tryParse(value);
                    if (parsedValue != null) {
                      LDL_cholesterol = parsedValue;
                    } else {
                      LDL_cholesterol = 0.0;
                    }
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextField(
                cursorColor: Color.fromRGBO(49, 100, 232, 1),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'HbA1c (%)',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(49, 100, 232, 1),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    value = value.replaceAll(',', '.');
                    double? parsedValue = double.tryParse(value);
                    if (parsedValue != null) {
                      HbA1c = parsedValue;
                    } else {
                      HbA1c = 0.0;
                    }
                  });
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: const Text('Prochaine étape', style: TextStyle(color: Color.fromRGBO(49, 100, 232, 1))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MeteoDesEmotionsPage(
                      poids: poids,
                      genre: genre,
                      taille: taille,
                      tension_artherielle: tension_artherielle,
                      tabac: tabac,
                      tabac_type: tabac_type,
                      alcool: alcool,
                      alcool_type: alcool_type,
                      activite_physique: activite_physique,
                      perimetre_abdominal: perimetre_abdominal,
                      fonction_renale: fonction_renale,
                      LDL_cholesterol: LDL_cholesterol,
                      HbA1c: HbA1c
                    )),
                  );
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}