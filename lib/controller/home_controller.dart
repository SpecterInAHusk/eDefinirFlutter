import 'package:edefinir/model/entities/disease.dart';
import 'package:edefinir/model/services/auth_service.dart';
import 'package:edefinir/model/services/disease_service.dart';

class HomeController{
  final AuthService authService = AuthService();
  final DiseaseService diseaseService = DiseaseService();

  bool isLogged(){    
    if(authService.getUser() != null){
      return true;
    }
    return false;
  }
    

  Future<List<Disease>> getAllDiseas() async{
    List<Disease> diseases = [];
    Disease disease;
    await diseaseService.getAll().then((value) => {
      value.docs.forEach((element) {
        disease = Disease.fromMap(element.data(), element.id);
        diseases.add(disease);
      })
    });
    return diseases;
  }
}