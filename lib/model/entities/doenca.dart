

class Doenca{

  late String _nome;
  late String _explicacao;
  late String _resumo;
  late String _beneficios;
  late String _recomendacao;
  late String _contraIndicacao;

  Doenca(this._nome);

  String get nome{
    return _nome;
  }

  set nome(String valor){
    _nome = valor;
  }

  String get explicacao{
    return _explicacao;
  }

  set explicacao(String valor){
    _explicacao = valor;
  }

  String get resumo{
    return _resumo;
  }

  set resumo(String valor){
    _resumo = valor;
  }

  String get beneficios{
    return _beneficios;
  }

  set beneficios(String valor){
    _beneficios = valor;
  }

  String get recomendacao{
    return _recomendacao;
  }

  set recomendacao(String valor){
    _recomendacao = valor;
  }

  String get contraIndicacao{
    return _contraIndicacao;
  }

  set contraIndicacao(String valor){
    _contraIndicacao = valor;
  }
}