package view;

import coconut.ui.View;
import data.PlayerModel;
class PlayerView extends View {
    @:attribute var id:String;
    @:state var player:PlayerModel = new PlayerModel();

    function render()
    <div class="player" id={id}>
        <div class="btnContainer">
            <button onclick={player.dec(5)}>-5</button>
            <button onclick={player.dec()}>-</button>
        </div>
        <div class="total">{player.lifeTotal}</div>
        <div class="btnContainer">
            <button onclick={player.inc(5)}>+5</button>
            <button onclick={player.inc()}>+</button>
        </div>
    </div>;
}