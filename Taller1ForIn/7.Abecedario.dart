void main(){
  List<String> abecedario = ['A','B','C','D','E','F','G','H','I','J','K',
  'L','M','N','Ñ','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
  int contador = 2;
  while(contador<abecedario.length){
  abecedario.remove(abecedario[contador]);
  contador = contador + 2;
  }
   for(String e in abecedario){
    print(e);
  }
}