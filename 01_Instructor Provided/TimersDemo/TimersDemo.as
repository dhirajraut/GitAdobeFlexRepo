package {
	import flash.display.Sprite;
	import flash.utils.Timer;
	import flash.events.TimerEvent;

	public class TimersDemo extends Sprite
	{
		//var timer:Timer = new Timer(1000,5);
		
		public function TimersDemo()
		{
				var timer:Timer = new Timer(1000,5);
				timer.addEventListener(TimerEvent.TIMER, onTimer);
				timer.addEventListener(TimerEvent.TIMER_COMPLETE, onTimerComp);
				timer.start();
		}
		
		private function onTimer(event:TimerEvent):void{
			trace("Timer Tested");
//			timer.stop();
		}
		
		private function onTimerComp(event:TimerEvent):void{
			trace("Timer Complete Tested");
//			timer.stop();
		}
	}
}
