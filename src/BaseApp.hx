// App.hx
import js.Browser.*;
import coconut.ui.View;
import coconut.Ui.hxx;
import view.PlayerView;

using coconut.ui.Renderer;

class BaseApp extends View {
  
  static function main() {
    document.body.mount(<BaseApp/>);
  }
  
  function render()
      <div>
        <PlayerView id="opponent" />
        <div id="separator" />
        <PlayerView id="me" />
      </div>

  ;
}