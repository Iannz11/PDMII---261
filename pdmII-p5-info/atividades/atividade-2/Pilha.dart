
class Pilha {
    List<int> elementos = [];
    
    void empilhar(int valor){
        elementos.add(valor);
    }
    
    void desempilhar(){
        if (elementos.isNotEmpty){
            elementos.removeLast();
            } else {
                print("sua pilha está vazia.");
            }
        }
    
    void mostrarTopo(){ 
        if (elementos.isNotEmpty){ 
            print("O elemento do topo é: ${elementos.last}"); 
        } else {
            print("Sua pilha está vazia"); 
        }
    }

    void mostrarPilha(){
        if (elementos.isNotEmpty){
            print("A sua pilha é:");
            print(elementos);
        }
    }
}