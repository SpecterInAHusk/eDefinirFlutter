import 'package:edefinir/model/entities/disease.dart';
import 'package:edefinir/model/entities/disease_atribute.dart';
import 'package:edefinir/model/services/disease_service.dart';

class AddDiseaseController{
  DiseaseService service = DiseaseService();
  
  createDisease({name, explanation, overview, required List<DiseaseAtribute> atributes}){
    Disease disease = Disease(
      name: name,
      explanation: explanation,
      overview: overview,
      atributes: atributes
    );
    service.create(disease);
  }
}