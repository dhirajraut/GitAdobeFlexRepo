package dto
{
	public class Login
	{
		public var username:String;
		public var password:String;
		
		public function Login(username:String = null, password:String = null)
		{
			if (username != null)
				this.username = username;
			if (password != null)
				this.password = password;
		}
		
	}
}