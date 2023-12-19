import 'package:edefinir/model/entities/artigo.dart';

class Doenca{
  late String _nome;
  late Artigo _artigo;
  late String _frequencia;
  late String _intencidade;
  late String _tipo;
  late String _tempo;
  late String _progressao;
  late String _cuidadados;
  late String _contraIndicacoes;
  late String _textoExplicativo;
  late String _exemploSessaoTreino;

  Doenca(
    this._nome, this._artigo,
    this._frequencia, this._intencidade,
    this._tipo, this._tempo,
    this._progressao, this._cuidadados,
    this._contraIndicacoes,
    this._textoExplicativo,
    this._exemploSessaoTreino
  );

  String get nome{
    return _nome;
  }
  set nome(String nome){
    _nome = nome;
  }

  Artigo get artigo{
    return _artigo;
  }
  set artigo(Artigo artigo){
    _artigo = artigo;
  }

  String get frequencia{
    return _frequencia;
  }
  set frequencia(String frequencia){
    _frequencia = frequencia;
  }

  String get intecidade{
    return _intencidade;
  }
  set intecidade(String intecidade){
    _intencidade = intecidade;
  }

  String get tipo{
    return _tipo;
  }
  set tipo(String tipo){
    _tipo = tipo;
  }

  String get tempo{
    return _tempo;
  }
  set tempo(String tempo){
    _tempo = tempo;
  }

  String get progressao{
    return _progressao;
  }
  set progressao(String progressao){
    _progressao = progressao;
  }
  
  String get cuidados{
    return _cuidadados;
  }
  set cuidados(String cuidados){
    _cuidadados = cuidados;
  }

  String get contraIndicacoes{
    return _contraIndicacoes;
  }
  set contraIndicacoes(String contraIndicacoes){
    _contraIndicacoes = contraIndicacoes;
  }

  String get textoExplicativo{
    return _textoExplicativo;
  }
  set textoExplicativo(String textoExplicativo){
    _textoExplicativo = textoExplicativo;
  }

  String get exemploSessaoTreino{
    return _exemploSessaoTreino;
  }
  set exemploSessaoTreino(String exemploSessaoTreino){
    _exemploSessaoTreino = exemploSessaoTreino;
  }
}