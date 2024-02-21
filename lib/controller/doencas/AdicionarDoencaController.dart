import 'package:edefinir/model/entities/Doenca.dart';
import 'package:edefinir/model/services/DoencaService.dart';

class AdicionarDoencaController{
  DoencaService service = DoencaService();
  
  adicionarDoenca({nome, explicacao, resumo, beneficios, recomendacao, contraIndicacao}){
    Doenca doenca = Doenca(
      nome: nome,
      explicacao: explicacao,
      resumo: resumo,
      beneficios: beneficios,
      recomendacao: recomendacao,
      contraIndicacao: contraIndicacao
    );
    this.service.create(doenca);
  }
}