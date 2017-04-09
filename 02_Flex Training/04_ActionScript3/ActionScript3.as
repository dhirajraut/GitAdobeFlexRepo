package {
	import flash.display.Sprite;
	import flash.geom.Rectangle;
	public class ActionScript3 extends Sprite
	{
		public function ActionScript3()
		{
			var rect:Rectangle = new Rectangle(0, 0, 200, 100);
			trace (rect.height);
			trace (rect.width);
			rect.width=100;
			trace (rect.width);
			trace (rect.width * rect.height);
			trace (rect.contains(20, 20));
//			addChild(rect); Can not do this. as Rectangle is not subclass of flash.display.DisplayObject
		}
	}
}
