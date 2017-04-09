package {
	import flash.display.Sprite;
	import flash.text.TextField;

	public class TxtFldDemo extends Sprite
	{
		public function TxtFldDemo()
		{
			//trace(hello);
	var textfield:TextField = new TextField();
	addChild(textfield);
//	textfield.text="Welcome ruweiourwiweurweiurwie riweurwiei rweuiruweir rweiruweiu rwieruwei ";
	textfield.htmlText="<a href='http://www.google.com'> Click Here </a><bR><BR>Try this";
	textfield.border = false;
	textfield.width= 200;
	textfield.wordWrap = true;
	//textfield.autoSize = ;
//	textfield.type = "pass";
	//textfield.multiline = true;
	//textfield.background = true;
//	textfield.backgroundColor = 0xff00ff;
	
		}
	}
}
