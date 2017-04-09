package {
	import flash.display.Sprite;
	import flash.geom.Rectangle;
	public class Rect extends Sprite
	{
		public function Rect()
		{
			var rect:Rectangle = new Rectangle(0,0,100,200);
			trace(rect.left);
			trace(rect.width);
			trace(rect.contains(250,25));
			rect.width= 500;
			trace(rect.width);
			trace(rect.contains(250,25));
		}
	}
}
