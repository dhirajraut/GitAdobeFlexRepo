package {
	import flash.display.Sprite;
	import flash.display.Shape;

	public class ShapeDemo extends Sprite
	{
		public function ShapeDemo()
		{
			var shape:Shape = new Shape();
			shape.graphics.lineStyle(1,0,100);
			addChild(shape);
			shape.graphics.drawRoundRect(0,0,100,100,3);
			shape.graphics.drawCircle(0,0,100);
//			addChild(shape);
			//shape.x= 100;
			//shape.y=100;
		}
	}
}
