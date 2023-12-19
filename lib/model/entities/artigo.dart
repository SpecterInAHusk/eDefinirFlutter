class Artigo{
  String _nome;
  String _autor;
  int _ano;
  String _revista;

  Artigo(this._nome, this._autor, this._ano, this._revista);
  
  String get nome{
    return _nome;
  }
  set nome(String nome){
    _nome = nome;
  }

  String get autor{
    return _autor;
  }
  set autor(String autor){
    _autor = autor;
  }

  int get ano{
    return _ano;
  }
  set ano(int ano){
    _ano = ano;
  }

  String get revista{
    return _revista;
  }
  set revista(String revista){
    _revista = revista;
  }
}