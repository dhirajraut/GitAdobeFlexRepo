package events
{
	import flash.events.Event;
	import dto.Login;

	public class LoginEvent extends Event
	{
		public var loginObject:Login;
		
		public function LoginEvent(loginObject:Login, type:String)
		{
			super(type);
			this.loginObject=loginObject;
		}
		
		override public function clone():Event 
		{
			return new LoginEvent(loginObject, type);
		}
	}
}