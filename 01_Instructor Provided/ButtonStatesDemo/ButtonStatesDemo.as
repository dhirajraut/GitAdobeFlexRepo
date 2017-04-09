package {
	import flash.display.Sprite;
	import flash.display.SimpleButton;
	import flash.display.Shape;
	import flash.events.MouseEvent;

	public class ButtonStatesDemo extends Sprite
	{
		public function ButtonStatesDemo()
		{
			var button:SimpleButton = new SimpleButton();
			var up:Shape = new Shape();
			up.graphics.lineStyle(1,0xffffff,1);
			up.graphics.beginFill(0x000000);
			up.graphics.drawRect(0,0,25,25);
			up.graphics.endFill();
			button.upState = up;
			addChild(button);
			
			var over:Shape = new Shape();
			over.graphics.lineStyle(4,0x00ff00,1);
			over.graphics.beginFill(0x00ff00);
			over.graphics.drawRect(50,50,50,50);
			over.graphics.endFill();
			button.overState = over;
			button.hitTestState = over;
			button.doubleClickEnabled = true;
//			addChild(button);
			
			button.addEventListener(MouseEvent.CLICK,uponClick);
			button.addEventListener(MouseEvent.MOUSE_DOWN,uponMouseDown);
			button.addEventListener(MouseEvent.DOUBLE_CLICK,uponDoubleClick);
			
		}
		
		
		private function uponClick(event:MouseEvent):void{
			trace("You clicked");
		}
		
		private function uponMouseDown(event:MouseEvent):void{
			trace("mouse Down");
		}
		
		private function uponDoubleClick(event:MouseEvent):void{
			trace("mouse Double Clicked");
		}
		
	}
}
