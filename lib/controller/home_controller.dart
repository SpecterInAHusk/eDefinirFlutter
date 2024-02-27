import 'package:edefinir/model/services/auth_service.dart';
import 'package:edefinir/model/services/disease_service.dart';

class HomeController{
  AuthService authService = AuthService();
  DiseaseService diseaseService = DiseaseService();

  Future<List> getAllDiseas() async{
    List diseases = [];
    await diseaseService.getAll().then((value) => {
      value.docs.forEach((element) {
        diseases.add(element.data());
      })
    });
    return diseases;
  }

  bool isLogged(){
    if(authService.getUser() != null){
      return true;
    }
    return false;
  }
}