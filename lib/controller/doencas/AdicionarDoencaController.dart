import 'package:edefinir/model/entities/doenca.dart';
import 'package:edefinir/model/services/DoencaService.dart';

class AdicionarDoencaController{
  DoencaService service = DoencaService();
  
  adicionarDoenca({nome, explicacao, resumo, beneficios, recomendacao, contraIndicacao}){
    print(nome);
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