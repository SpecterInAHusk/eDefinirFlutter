import 'package:edefinir/model/entities/disease.dart';
import 'package:edefinir/model/services/auth_service.dart';
import 'package:edefinir/model/services/disease_service.dart';

class EditDiseaseController{
  AuthService authService = AuthService();
  DiseaseService diseaseService = DiseaseService();
  
  updateDisease({id, name, explanation, overview, atributes}){
    Disease disease = Disease(
      name: name,
      explanation: explanation,
      overview: overview,
      atributes: atributes
    );
    diseaseService.update(disease, id);
  }

  deleteDisease({id}){
    diseaseService.delete(id);
  }

  bool isLogged(){
    if(authService.getUser() != null){
      return true;
    }
    return false;
  }
}