package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.tweens.misc.ColorTween;
import flixel.tweens.FlxTween;

/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState {
    private var tween:ColorTween;
    private var text:FlxText;

	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void {
		// Set a background color
		FlxG.cameras.bgColor = 0xff131c1b;
		// Show the mouse (in case it hasn't been disabled)
		#if !FLX_NO_MOUSE
		FlxG.mouse.show();
		#end
		
        var title = new FlxSprite(0, 0, "assets/images/title.png");
        add(title);
        text = new FlxText(0, 2*FlxG.height/3, FlxG.width, "Press space");
        text.setFormat("assets/Yokawerad.otf", 32, "center", FlxText.BORDER_OUTLINE);
        add(text);
        tween = FlxTween.color(2, 0, 0, 1, 0.1, { type: FlxTween.PINGPONG });
		super.create();
	}

	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void {
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void {
		super.update();
        text.alpha = tween.alpha;
        if(FlxG.keyboard.pressed("SPACE")) {
            FlxG.switchState(new PlayState());
        }
	}	
}
