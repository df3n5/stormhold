package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.tweens.misc.ColorTween;
import flixel.tweens.FlxTween;

class MenuState extends FlxState {
    private var tween:ColorTween;
    private var text:FlxText;
    private var titleText:FlxText;

    override public function create():Void {
        FlxG.cameras.bgColor = 0xff131c1b;
        // Show the mouse (in case it hasn't been disabled)
        #if !FLX_NO_MOUSE
        FlxG.mouse.show();
        #end
        
        var title = new FlxSprite(0, 0, "assets/images/title.png");
        add(title);

        titleText = new FlxText(0, 1*FlxG.height/3, FlxG.width, "stormhold", false);
        //titleText.setFormat("assets/Yokawerad.otf", 32, "center", FlxText.BORDER_OUTLINE);
        titleText.setFormat("assets/REVOLUTION.ttf", 72, 0xFFFFFF, "center", FlxText.BORDER_OUTLINE);
        add(titleText);

        text = new FlxText(0, 2*FlxG.height/3, FlxG.width, "Press space", false);
        //text.setFormat("assets/Yokawerad.otf", 32, "center", FlxText.BORDER_OUTLINE);
        text.setFormat("assets/REVOLUTION.ttf", 38, 0xFFabcd, "center", FlxText.BORDER_OUTLINE);
        add(text);
        tween = FlxTween.color(2, 0, 0, 1, 0.1, { type: FlxTween.PINGPONG });
        super.create();
    }

    override public function destroy():Void {
        super.destroy();
    }

    override public function update():Void {
        super.update();
        text.alpha = tween.alpha;
        if(FlxG.keyboard.pressed("SPACE")) {
            FlxG.switchState(new PlayState());
        }
    }   
}
