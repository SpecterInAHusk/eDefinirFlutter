

class Doenca{

  String? id;
  String? nome;
  String? explicacao;
  String? resumo;
  String? beneficios;
  String? recomendacao;
  String? contraIndicacao;

  Doenca({this.nome, this.explicacao, this.resumo, this.beneficios, this.recomendacao, this.contraIndicacao});

  Doenca.fromMap(Map snapshot, String id) :
      id = snapshot['id'] ?? '',
      nome = snapshot['nome'],
      explicacao = snapshot['explicacao'],
      resumo = snapshot['resumo'],
      beneficios = snapshot['beneficios'],
      recomendacao = snapshot['recomendacao'],
      contraIndicacao = snapshot['contraIndicacao'];

  toJson(){
    return {
      'nome': nome,
      'explicacao': explicacao,
      'resumo': resumo,
      'beneficios': beneficios,
      'recomendacao': recomendacao,
      'contraIndicacao': contraIndicacao,
    };
  }
}