package bitPositions

import "testing"

func TestSoma(t *testing.T){
    x := bitPositions(86, 2, 3)
    if x != true {
    t.Error("Opa! Esperava true, mas, a funcao bitPosition( ) retornou", x)
    }else {
         t.Log("O teste x = 86, p1 = 2, p2 = 3 passou!") // log some info if you want
    }

    x = bitPositions(125, 1, 2)
    if x != false {
        t.Error("Opa! Esperava false, mas, a funcao bitPosition( ) retornou ", x)
    }else {
         t.Log("O teste x = 125, p1 = 1, p2 = 2 passou!") // log some info if you want
    }
}