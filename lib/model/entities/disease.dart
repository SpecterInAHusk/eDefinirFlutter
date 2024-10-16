

import 'package:edefinir/model/entities/disease_attribute.dart';

class Disease{

  String? id;
  String name;
  String explanation;
  String overview;
  List<DiseaseAttribute>? attributes;

  Disease({
    required this.name,
    required this.explanation,
    required this.overview,
    required this.attributes
    });

  Disease.fromMap(Map snapshot, String? id) :
      id = id ?? '',
      name = snapshot['name'],
      explanation = snapshot['explanation'],
      overview = snapshot['overview'],
      attributes = (snapshot['attributes'] as List<dynamic>?)
            ?.map((item) => DiseaseAttribute.fromMap(item as Map<String, dynamic>))
            .toList();

  toJson(){
    return {
      'id': id,
      'name': name,
      'explanation': explanation,
      'overview': overview,
      'attributes': attributes?.map((atribute) => atribute.toJson()).toList()
    };
  }

  toFirebase(){
    return {
      'name': name,
      'explanation': explanation,
      'overview': overview,
      'attributes': attributes?.map((atribute) => atribute.toJson()).toList()
    };
  }
}