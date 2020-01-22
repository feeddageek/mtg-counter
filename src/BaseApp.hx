// App.hx
import js.Browser.*;
import js.html.URLSearchParams;
import coconut.ui.View;
import coconut.Ui.hxx;
import view.PlayerView;
import js.Lib.undefined;

using coconut.ui.Renderer;
using BaseApp;

class BaseApp extends View {
  @:attribute var p:String;
  @:attribute var o:String;
  
  static function main() {
    var params = new URLSearchParams(window.location.search);
    var p = params.getDefault('p', '1');
    var o = params.getDefault('o', '2');

    document.body.mount(<BaseApp p={p} o={o}/>);
  }
  
  function render()
      <div>
        <PlayerView flip={true} color={o} />
        <div id="separator" />
        <PlayerView color={p} />
      </div>
  ;

  static inline function getDefault(params:URLSearchParams, name:String, defaultValue:String) {
    var returnValue = params.get(name);
    return if (returnValue == undefined) defaultValue else retreturnValue;
  }
}