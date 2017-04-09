package {
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;

	public class ActionScript5 extends Sprite
	{
		public function ActionScript5()
		{
			var textField:TextField = new TextField();
			addChild(textField);
			textField.text = "This is a very <b>big line... It is really big... This so very big line that it does not end... It goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...";
			textField.border = true;
			//textField.width = 200;
			textField.wordWrap = false;
			textField.multiline = true;
			textField.background = true;
			textField.type = "input";
			
			
			var textField1:TextField = new TextField();
			textField1.text = "Apple";
			textField1.x = 100;
			textField1.y = 100;
			var textField1a:TextField = new TextField();
			textField1a.type = "input";
			textField1a.border = true;
			textField1a.background = true;
			textField1a.x = 200;
			textField1a.y = 100;
			textField1a.height = 20;
			textField1a.width = 50;

			var textField2:TextField = new TextField();
			textField2.text = "Mango";
			textField2.x = 100;
			textField2.y = 150;
			var textField2a:TextField = new TextField();
			textField2a.type = "input";
			textField2a.text = "0";
			textField2a.x = 200;
			textField2a.y = 150;
			textField2a.height = 20;
			textField2a.width = 50;
			textField2a.border = true;
			textField2a.background = true;
			var textField3:TextField = new TextField();
			textField3.text = "Grapes";
			textField3.x = 100;
			textField3.y = 200;
			var textField3a:TextField = new TextField();
			textField3a.type = "input";
			textField3a.x = 200;
			textField3a.y = 200;
			textField3a.height = 20;
			textField3a.width = 50;
			textField3a.border = true;
			textField3a.background = true;
			addChild(textField1);
			addChild(textField1a);
			addChild(textField2);
			addChild(textField2a);
			addChild(textField3);
			addChild(textField3a);
			//mx.controls.Alert.show('Hmm ' + param)
			trace(textField1a.text + textField2a.text + textField3a.text);
//			textField.backgroundColor("0xff0000");
			
			var format:TextFormat = new TextFormat();
			format.color = 0x0000ff;
			//textField.setTextFormat(format);
		}
	}
}
