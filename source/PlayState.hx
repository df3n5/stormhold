package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;

class PlayState extends FlxState {
    override public function create():Void {
        FlxG.cameras.bgColor = 0xff9a9a9a;
        // Show the mouse (in case it hasn't been disabled)
        #if !FLX_NO_MOUSE
        FlxG.mouse.show();
        #end
        add(new Player(10, 10));
        
        super.create();
    }

    override public function destroy():Void {
        super.destroy();
    }

    override public function update():Void {
        super.update();
    }   
}
