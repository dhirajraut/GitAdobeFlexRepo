package {	import flash.display.Sprite;
			import flash.display.SimpleButton;
			import flash.display.Shape;
			public class drawme extends Sprite
		{	public function drawme()
		{	var button:SimpleButton = new SimpleButton ();
			var up:Shape = new Shape();
			up.graphics.lineStyle(0,0xffffff,1);
			up.graphics.beginFill(0x000000);
			up.graphics.drawRect(0,0,100,50);
			up.graphics.endFill();
			button.upState = up;
			addChild(button);
			var over:Shape = new Shape();
			over.graphics.lineStyle(0,0xcccccc,1);
			over.graphics.beginFill(0x333333);
			over.graphics.drawRect(0,0,100,50);
			over.graphics.endFill();
			button.overState = over;
			var down:Shape = new Shape();
			down.graphics.lineStyle(0,0x000000,1);
			down.graphics.beginFill(0xffffff);
			down.graphics.drawRect(0,0,100,50);
			down.graphics.endFill();
			button.downState = down;
			button.hitTestState = up;
		}	}}
