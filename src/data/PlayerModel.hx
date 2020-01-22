package data;

import coconut.data.Model;

class PlayerModel implements Model {
    @:observable var name:String = '';
    @:editable var lifeTotal:Int = 20;
    @:observable var log: Logger = new Logger();



    public inline function inc(val = 1) {
        lifeTotal = lifeTotal+val;
    }

    public inline function dec(val = 1) {
        lifeTotal = lifeTotal-val;
    }
}