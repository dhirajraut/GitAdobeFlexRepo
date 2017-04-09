package com.lehman.framework.foundation.components.datagrid
{
	import mx.containers.Canvas;
	import mx.controls.Alert;
	import mx.controls.Label;
	
	/**
	 * Authors: L&TInfotech team
	 * Division: CAD and Corporate Technology
	 * Company: Lehman Brothers - Jersey City
	 * Project: 
	 * Class: It is the wrapper class for LDataGridStruct. Wrapper holds the custom DataGrid, Title and the buttons on top of the Grid.
	 * Date: 
	 */
	public class LDataGrid extends Canvas
	{				
		private var _configData:LDataGridConfig;	//  holds configuration information for the custom component  
   		private var _customEventHandler:Class;		//	implementation class of a custom event on the custom component 
     
     	// gets the configuration data
     	public function get configData ():LDataGridConfig
     	{
     		return _configData;
     	}
     	// sets the configuration data
   		public function set configData (configData: LDataGridConfig):void   
 		{ 			
 			_configData = configData;
 			var lblGridTitle:Label = new Label();
			lblGridTitle.x=5;
//			lblGridTitle.y=5;
			lblGridTitle.height=22;
			lblGridTitle.text=configData.gridTitle;
			lblGridTitle.setStyle("fontSize","12");
			lblGridTitle.setStyle("fontStyle","italic");
			lblGridTitle.setStyle("fontWeight","bold");
			this.addChild(lblGridTitle);
			
 			var gridStruct:LDataGridStruct=new LDataGridStruct();
 			gridStruct.x=5;
 			gridStruct.y=lblGridTitle.height;
   			gridStruct.columnCollection=configData.columnCollection;
   			gridStruct.dataCollection=configData.dataCollection;
			addChild(gridStruct);
 		}
 		// gets the Custom Event Handler
   		public function get customEventHandler ():Class
   		{
   			return _customEventHandler;
   		}
   		// sets the Custom Event Handler
   		public function set customEventHandler (customEventHandler: Class):void   
   		{
   			_customEventHandler = customEventHandler;
   		}
   		//used to add the button components to the custom component
   		private function addComponent():void
   		{
   			
   		}
   		
   		/* override protected function initializationComplete():void{
   			var gridStruct:LDataGridStruct=new LDataGridStruct();
   			gridStruct.columnCollection=_configData.columnCollection;
   		} */


	}
}