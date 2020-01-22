package data;

import coconut.data.Model;

class Logger implements Model{
    @:observable var lifeTotal:Int = 20;
    
    @:transition public function mutateLife(value: Int) {
        return {lifeTotal: lifeTotal+value};
    }
}