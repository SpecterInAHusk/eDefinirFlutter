import 'package:edefinir/model/entities/disease.dart';
import 'package:edefinir/model/services/disease_service.dart';

class AdicionarDoencaController{
  DiseaseService service = DiseaseService();
  
  adicionarDoenca({name, explanation, overview, benefits, recommendations, contraIndications}){
    Disease disease = Disease(
      name: name,
      explanation: explanation,
      overview: overview,
      benefits: benefits,
      recommendations: recommendations,
      contraIndications: contraIndications
    );
    service.create(disease);
  }
}