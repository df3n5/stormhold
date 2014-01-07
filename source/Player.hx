import flixel.FlxG;
import flixel.FlxSprite;

class Player extends FlxSprite {
    public function new(X:Float, Y:Float) {
        super(X, Y, "assets/images/title.png");
        makeGraphic(100, 100, 0xFFF000);

    }

    override public function update():Void {
        super.update();

        var speed : Float = 10;
        if (FlxG.keyboard.pressed("DOWN", "S")) {
            velocity.y = speed;
        } else if (FlxG.keyboard.pressed("UP", "W")) {
            velocity.y = -speed;
        } else if (FlxG.keyboard.pressed("LEFT", "A")) {
            velocity.x = -speed;
        } else if (FlxG.keyboard.pressed("RIGHT", "D")) {
            velocity.x = speed;
        }
    }
}
