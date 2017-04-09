package {
	import flash.display.Sprite;
	import flash.display.Shape;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	public class ActionScript4 extends Sprite
	{
		public function ActionScript4()
		{
			var shape:Shape = new Shape();
			shape.x=100;
			shape.y=200;
			addChild(shape);
			shape.graphics.lineStyle(10, 0x00ff00, 0.2);
			shape.graphics.beginFill(0x0000ff, 0.6);
			shape.graphics.drawCircle(0, 0, 100);
			shape.graphics.drawRect(10, 10, 100, 100);
			shape.graphics.drawRect(-50, -50, 100, 100);
			shape.graphics.endFill();












			
			var button:SimpleButton = new SimpleButton();
			var up:Shape = new Shape();
			up.graphics.beginFill(0xff0000);
			up.graphics.drawRect(300, 0, 100, 50);
			up.graphics.endFill();
			button.upState = up;
			
			var over:Shape = new Shape();
			over.graphics.beginFill(0x00ff00);
			over.graphics.drawRect(300, 0, 100, 50);
			over.graphics.endFill();
			button.overState = over;
			
			var down:Shape = new Shape();
			down.graphics.beginFill(0x0000ff);
			down.graphics.drawRect(300, 0, 100, 50);
			down.graphics.endFill(); 
			button.downState = down;

			var hit:Shape = new Shape();
			hit.graphics.beginFill(0xffffff);
			hit.graphics.drawRect(300, 0, 50, 25);
			hit.graphics.endFill();
			button.hitTestState = hit;
			
			addChild(button);
			button.addEventListener(MouseEvent.CLICK, onClick);
			button.addEventListener(MouseEvent.MOUSE_DOWN, mouseDown);
			button.addEventListener(MouseEvent.MOUSE_UP, mouseUp);
			button.addEventListener(MouseEvent.MOUSE_OVER, mouseOver);
			button.addEventListener(MouseEvent.MOUSE_WHEEL, mouseWheel);
			
		}
		private function onClick(event:MouseEvent): void
		{
			trace ("onClick");
		}
		private function mouseDown(event:MouseEvent): void
		{
			trace ("mouseDown");
		}
		private function mouseUp(event:MouseEvent): void
		{
			trace ("mouseUp");
		}
		private function mouseOver(event:MouseEvent): void
		{
			trace ("mouseOver");
		}
		private function mouseWheel(event:MouseEvent): void
		{
			trace ("mouseWheel");
		}
	}
}
