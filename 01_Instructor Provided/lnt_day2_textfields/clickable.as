package {
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;

	public class clickable extends Sprite
	{
		public function clickable()
		{
			var textfield:TextField = new TextField;
			addChild(textfield);
			//textfield.htmlText="<a href ='http://www.google.com'> Take me to Google </a> ";
			//textfield.htmlText="<a href ='http://www.google.com' target='_blank'> Welcome to Google</a> ";
			//textfield.htmlText="<a href='mailto:mailme@mail.com'>Mail Me</a>";
			textfield.text="Welcome to your life, There's no turning back Welcome to your life, There's no turning back Welcome to your life, There's no turning back Welcome to your life, There's no turning back Welcome to your life, There's no turning back Welcome to your life, There's no turning back Welcome to your life, There's no turning back Welcome to your life, There's no turning back";
			textfield.border=true;
			textfield.autoSize = TextFieldAutoSize.LEFT;
			textfield.width = 100;
			textfield.height = 100;
			textfield.wordWrap = true;
			textfield.multiline = true;
//			textfield.type = "input";

			var format:TextFormat = new TextFormat();
			format.color = 0x0000ff;
			textfield.setTextFormat(format);
		}
	}
}
