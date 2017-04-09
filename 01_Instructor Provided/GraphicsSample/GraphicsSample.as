package {
	import flash.display.Sprite;
	import flash.display.Shape;

	public class GraphicsSample extends Sprite
	{
		public function GraphicsSample()
		{
			var shape:Shape = new Shape();
			shape.graphics.lineStyle(10,0x00ff00,20);
			shape.graphics.beginFill(0xff0000,0.6);
			shape.graphics.drawRect(100,100,200,50);
			shape.graphics.endFill();
			addChild(shape);
				                          
		}
	}
}
