package {
	import flash.display.Sprite;
	import flash.display.Shape;

	public class Shape extends Sprite
	{
		public function Shape()
		{
			var shape:Shape = new Shape();
			shape.graphics.lineStyle(1,0,100);
			shape.x= 100;
			shape.y=100;
		}
	}
}
