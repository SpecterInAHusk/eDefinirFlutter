import 'package:edefinir/model/entities/disease.dart';
import 'package:edefinir/model/services/auth_service.dart';
import 'package:edefinir/model/services/disease_service.dart';

class EditDiseaseController{
  AuthService authService = AuthService();
  DiseaseService diseaseService = DiseaseService();
  
  updateDisease({id, name, explanation, overview, benefits, recommendations, contraIndications}){
    Disease disease = Disease(
      name: name,
      explanation: explanation,
      overview: overview,
      benefits: benefits,
      recommendations: recommendations,
      contraIndications: contraIndications
    );
    diseaseService.update(disease, id);
  }

  bool isLogged(){
    if(authService.getUser() != null){
      return true;
    }
    return false;
  }
}