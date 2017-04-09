package {
	import flash.display.Sprite;

	public class abcd extends Sprite
	{
		public function abcd()
		{
			var qtyapple:Number;
			qtyapple = 6;
			var qtyorange:Number;
			qtyorange = 16;
			var qtypineapple:Number;
			qtypineapple = 25;
			trace("Apples:: " + qtyapple);
			trace("Oranges:: " + qtyorange);
			trace("Pineapples:: " + qtypineapple);
			var tot:Number;
			tot=qtyapple+qtyorange+qtypineapple;
			trace("Total:: " + tot);
			trace(root);
		}
	}
}
