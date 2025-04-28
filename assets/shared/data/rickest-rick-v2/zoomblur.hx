// USES PSYCH ENGINE 0.7.1h
// Author: TheLeerName

var zoomblurAllowed:Bool = true;
var intensity:Float = 500;
var pos = {x: 0.5, y: 0.5};

game.initLuaShader('zoomblur');
var shader = game.createRuntimeShader('zoomblur');
var shader2 = game.createRuntimeShader('rgb effect2');
var filters = [new ShaderFilter(shader), new ShaderFilter(shader2)];
game.camGame._filters = game.camHUD._filters = filters;
shader.setFloat('posX', pos.x); shader.setFloat('posY', pos.y);

function onUpdate(elapsed) {
	shader.setFloat('focusPower', zoomblurAllowed ? (game.camHUD.zoom - 1) * intensity : 0);
}
function onStepHit() {
	if (curStep == 292){
		createCountdownSprite('ready', ClientPrefs.data.antialiasing);
	}
	if (curStep == 296){
		createCountdownSprite('set', ClientPrefs.data.antialiasing);
	}
	if (curStep == 300){
		createCountdownSprite('go', ClientPrefs.data.antialiasing);
	}
	if (curStep == 1760) {
		var filters = [];
		game.camGame._filters = game.camHUD._filters = filters;
	}
	if (curStep == 2016) {
		var filters = [new ShaderFilter(shader), new ShaderFilter(shader2)];
		game.camGame._filters = game.camHUD._filters = filters;
	}

}
function createCountdownSprite(image:String, antialias:Bool):FlxSprite
	{
		var spr:FlxSprite = new FlxSprite().loadGraphic(Paths.image(image));
		spr.cameras = [camHUD];
		spr.scrollFactor.set();
		spr.updateHitbox();

		if (PlayState.isPixelStage)
			spr.setGraphicSize(Std.int(spr.width * daPixelZoom));

		spr.screenCenter();
		spr.antialiasing = antialias;
		insert(members.indexOf(noteGroup), spr);
		FlxTween.tween(spr, {/*y: spr.y + 100,*/ alpha: 0}, Conductor.crochet / 1000, {
			ease: FlxEase.cubeInOut,
			onComplete: function(twn:FlxTween)
			{
				remove(spr);
				spr.destroy();
			}
		});
		return spr;
	}