import 'Pilha.dart';
void main(){
        Pilha pilha1 = Pilha();
        
        pilha1.empilhar(10);
        pilha1.empilhar(20);
        pilha1.empilhar(30);
        
        pilha1.mostrarPilha();
        
        pilha1.desempilhar();
        
         pilha1.mostrarPilha();
         
        pilha1.mostrarTopo();
        
        pilha1.mostrarPilha();
        
  }