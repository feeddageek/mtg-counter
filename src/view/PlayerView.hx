package view;

import coconut.ui.View;
import data.PlayerModel;
class PlayerView extends View {
    @:attribute var id:String;
    @:state var player:PlayerModel = new PlayerModel();

    function render()
    <div class="player" id={id}>
        <div class="lifeBtnContainer">
            <button class="lifeBtn" onclick={player.dec(5)}>-5</button>
            <button class="lifeBtn" onclick={player.dec()}>-</button>
        </div>
        <div class="total">{player.lifeTotal}</div>
        <div class="lifeBtnContainer">
            <button class="lifeBtn" onclick={player.inc(5)}>+5</button>
            <button class="lifeBtn" onclick={player.inc()}>+</button>
        </div>
    </div>;
}