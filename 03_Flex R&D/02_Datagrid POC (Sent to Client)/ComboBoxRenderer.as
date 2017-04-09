package
{
	import mx.controls.ComboBox;
	import flash.events.FocusEvent;
	import flash.events.FocusEvent;
	import mx.collections.ArrayCollection;
	import mx.controls.dataGridClasses.DataGridListData;


	public class ComboBoxRenderer extends ComboBox
	{
		public function ComboBoxRenderer()
       		{
			super();
			this.toolTip = this.text;
			this.dataProvider = DropDown_Names;
			addEventListener(flash.events.FocusEvent.FOCUS_IN, focusEventHandler);
  		}
          private var DropDown_Names:ArrayCollection = new
			ArrayCollection([{label:'Fiction'},{label:'Non Fiction'}]);

			override public function get data():Object {
				trace('get data cbr renderere');
					return super.data;
					}

// this affects what is displayed by widget
			[Bindable]
		override public function set data(value:Object):void {
				trace('********** set cbr data ***********');
			var rowData:DataGridListData = this.listData as DataGridListData;
				if (value != null) {
				var stringToFind:String = null;
				var selected:int = -1;

				if (listData.label != null)
				stringToFind = listData.label.toUpperCase();

				for (var i:int=0; i< dataProvider.length;i++) {
				var item:String = String(dataProvider[i].data).toUpperCase();
				if (item == stringToFind) {
				selectedIndex = i;
				trace('found it cbr');
				return;
				}
			}
			selectedIndex = selected;
			}
			trace('not found cb renderer');
		}

			private function focusEventHandler(e:FocusEvent):void {
			open();
			}

		
	}
}