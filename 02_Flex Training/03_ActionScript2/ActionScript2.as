package {
	import flash.display.Sprite;

	public class ActionScript2 extends Sprite
	{
		public function ActionScript2()
		{
			/* Variable Declaration */
			var item1:String = "Apple";
			var item2:String = "Mango";
			var item3:String = "Grapes";
			
			var item1Price:Number = 10;
			var item2Price:Number = 100;
			var item3Price:Number = 5;

			/* Tracing */
			trace (item1 +" Rs." + item1Price);
			trace (item2 +" Rs." + item2Price);
			trace (item3 +" Rs." + item3Price);
		}
	}
}
