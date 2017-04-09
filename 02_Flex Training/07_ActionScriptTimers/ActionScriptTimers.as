package {
	import flash.display.Sprite;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.geom.Rectangle;
	import flash.display.Shape;
	
	public class ActionScriptTimers extends Sprite
	{
		private var radius:int = 0;
		public function ActionScriptTimers()
		{
			
			var timer:Timer = new Timer(100, 100);
			timer.addEventListener(TimerEvent.TIMER, onTimer);
			timer.start();
		}
		private function onTimer(event:TimerEvent):void
		{
			var shape:Shape = new Shape();
			shape.graphics.lineStyle(10, 0x00ff00, 0.2);
			shape.graphics.drawCircle(100, 200, radius);
			radius = radius + 1;
			addChild(shape);
			trace("Tick");
		}
	}
}
