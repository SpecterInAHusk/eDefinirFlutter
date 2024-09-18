

import 'package:edefinir/model/entities/disease_atribute.dart';

class Disease{

  String? id;
  String name;
  String explanation;
  String overview;
  List<DiseaseAtribute>? atributes;

  Disease({
    required this.name,
    required this.explanation,
    required this.overview,
    required this.atributes
    });

  Disease.fromMap(Map snapshot, String? id) :
      id = id ?? '',
      name = snapshot['name'],
      explanation = snapshot['explanation'],
      overview = snapshot['overview'],
      atributes = (snapshot['attributes'] as List<dynamic>?)
            ?.map((item) => DiseaseAtribute.fromMap(item as Map<String, dynamic>))
            .toList();

  toJson(){
    return {
      'id': id,
      'name': name,
      'explanation': explanation,
      'overview': overview,
      'atributes': atributes?.map((atribute) => atribute.toJson()).toList()
    };
  }

  toFirebase(){
    return {
      'name': name,
      'explanation': explanation,
      'overview': overview,
      'atributes': atributes?.map((atribute) => atribute.toJson()).toList()
    };
  }
}