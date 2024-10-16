import 'package:edefinir/model/entities/disease.dart';
import 'package:edefinir/model/entities/disease_attribute.dart';
import 'package:edefinir/model/services/disease_service.dart';

class AddDiseaseController{
  DiseaseService service = DiseaseService();
  
  createDisease({name, explanation, overview, required List<DiseaseAttribute> attributes}){
    Disease disease = Disease(
      name: name,
      explanation: explanation,
      overview: overview,
      attributes: attributes
    );
    service.create(disease);
  }
}