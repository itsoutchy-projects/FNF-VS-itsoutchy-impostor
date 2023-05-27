package;

#if desktop
import sys.thread.Thread;
#end
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.input.keyboard.FlxKey;
import flixel.addons.display.FlxGridOverlay;
import flixel.addons.transition.FlxTransitionSprite.GraphicTransTileDiamond;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.transition.TransitionData;
import haxe.Json;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
#if MODS_ALLOWED
import sys.FileSystem;
import sys.io.File;
#end
import options.GraphicsSettingsSubState;
//import flixel.graphics.FlxGraphic;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.graphics.frames.FlxFrame;
import flixel.group.FlxGroup;
import flixel.input.gamepad.FlxGamepad;
import flixel.math.FlxMath;
import flixel.math.FlxPoint;
import flixel.math.FlxRect;
import flixel.system.FlxSound;
import flixel.system.ui.FlxSoundTray;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.addons.ui.FlxInputText;
import flixel.ui.FlxButton;
import openfl.Assets;

using StringTools;

class SecretState extends MusicBeatState {
    var codeBox:FlxInputText;
    var bg:FlxSprite;

    override public function create():Void {
        FlxG.mouse.useSystemCursor = true;
        FlxG.mouse.visible = true;
        bg = new FlxSprite(-80).loadGraphic(Paths.image('secretBG'));
		bg.setGraphicSize(Std.int(bg.width));
		bg.updateHitbox();
		bg.screenCenter();
		bg.antialiasing = ClientPrefs.globalAntialiasing;
		add(bg);

        codeBox = new FlxInputText(0, 0, 150, "", 8, FlxColor.BLACK, FlxColor.WHITE, true);
        codeBox.screenCenter();
        // enterButton = new FlxButton(FlxG.width / 2 + 90, FlxG.height / 2, "Enter", function() {
        //     for (code in codes) {
        //         if (codeBox.text == code) {
        //             if (code == "crazy" || code == "Crazy") {
        //                 // PLEASE WORK IM BEGGING YOU PLEASE!
        //                 var poop:String = Highscore.formatSong("reactor", 2);
        //                 /*#if MODS_ALLOWED
        //                 if(!sys.FileSystem.exists(Paths.modsJson(songLowercase + '/' + poop)) && !sys.FileSystem.exists(Paths.json(songLowercase + '/' + poop))) {
        //                 #else
        //                 if(!OpenFlAssets.exists(Paths.json(songLowercase + '/' + poop))) {
        //                 #end
        //                     poop = songLowercase;
        //                     curDifficulty = 1;
        //                     trace('Couldnt find file');
        //                 }*/
        //                 trace(poop);

        //                 PlayState.SONG = Song.loadFromJson(poop, "reactor");
        //                 PlayState.isStoryMode = false;
        //                 PlayState.storyDifficulty = 2;

        //                 trace('SECRET CODE: "crazy" :)');

        //                 LoadingState.loadAndSwitchState(new PlayState());
        //             }
        //         }
        //     }
        // });
        // enterButton.screenCenter();
        add(codeBox);
        // add(enterButton);
        codeBox.hasFocus = true;
    }

    override function update(elapsed:Float):Void {
        var codes:Array<String> = ["insane", "best"];

        if (FlxG.keys.justPressed.BACKSPACE || FlxG.keys.justPressed.ESCAPE)
        {
            LoadingState.loadAndSwitchState(new MainMenuState());
        }

        if (FlxG.keys.justPressed.L)
        {
            // PLEASE WORK IM BEGGING YOU PLEASE!
            var poop:String = Highscore.formatSong("reactor", 2);
			/*#if MODS_ALLOWED
			if(!sys.FileSystem.exists(Paths.modsJson(songLowercase + '/' + poop)) && !sys.FileSystem.exists(Paths.json(songLowercase + '/' + poop))) {
			#else
			if(!OpenFlAssets.exists(Paths.json(songLowercase + '/' + poop))) {
			#end
				poop = songLowercase;
				curDifficulty = 1;
				trace('Couldnt find file');
			}*/
			trace(poop);

			PlayState.SONG = Song.loadFromJson(poop, "reactor");
			PlayState.isStoryMode = false;
			PlayState.storyDifficulty = 2;

            trace("hehe it just takes you to reactor >:) thats what you get for trying to cheat");

			LoadingState.loadAndSwitchState(new PlayState());
        }

        // if (codeBox.text == "crazy") {
        //     // PLEASE WORK IM BEGGING YOU PLEASE!
        //     var poop:String = Highscore.formatSong("reactor", 2);
        //     /*#if MODS_ALLOWED
        //     if(!sys.FileSystem.exists(Paths.modsJson(songLowercase + '/' + poop)) && !sys.FileSystem.exists(Paths.json(songLowercase + '/' + poop))) {
        //     #else
        //     if(!OpenFlAssets.exists(Paths.json(songLowercase + '/' + poop))) {
        //     #end
        //         poop = songLowercase;
        //         curDifficulty = 1;
        //         trace('Couldnt find file');
        //     }*/
        //     trace(poop);

        //     PlayState.SONG = Song.loadFromJson(poop, "reactor");
        //     PlayState.isStoryMode = false;
        //     PlayState.storyDifficulty = 2;

        //     trace('SECRET CODE: "crazy" :)');

        //     LoadingState.loadAndSwitchState(new PlayState());
        //     codeBox.text = "";
        // }

        if (codeBox.text == "nervous") {
            loadSong("meltdown", 2, "nervous");
        }

        if (codeBox.text == "best") {
            loadSong("best-song", 2, "best");
        }
    }

    // loads a song, only usable in SecretState
    function loadSong(name:String, difficulty:Int = 2, ?code:String = "NaN") {
        // PLEASE WORK IM BEGGING YOU PLEASE!
        var poop:String = Highscore.formatSong(name, difficulty);
        /*#if MODS_ALLOWED
        if(!sys.FileSystem.exists(Paths.modsJson(songLowercase + '/' + poop)) && !sys.FileSystem.exists(Paths.json(songLowercase + '/' + poop))) {
        #else
        if(!OpenFlAssets.exists(Paths.json(songLowercase + '/' + poop))) {
        #end
            poop = songLowercase;
            curDifficulty = 1;
            trace('Couldnt find file');
        }*/
        trace(poop);

        PlayState.SONG = Song.loadFromJson(poop, name);
        PlayState.isStoryMode = false;
        PlayState.storyDifficulty = difficulty;

        trace('SECRET CODE: "$code" :)');

        LoadingState.loadAndSwitchState(new PlayState());
        codeBox.text = "";
    }
}