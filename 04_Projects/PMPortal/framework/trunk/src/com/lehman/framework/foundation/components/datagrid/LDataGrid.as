    /**
	 * Authors : L&TInfotech Team
	 * Division: CAD and Corporate Technology
	 * Company : Lehman Brothers - Jersey City
	 * Project : PMPortal Components
	 * Class   : It is the wrapper class for LDataGridStruct. Wrapper holds the custom DataGrid, Title and the buttons on top of the Grid.
	 * Date    : 18/02/2008
	 */

package com.lehman.framework.foundation.components.datagrid
{
	import mx.containers.Canvas;
	import mx.controls.Alert;
	
	/** LDataGrid Class
	 *  It is the wrapper class for LDataGridStruct holding the custom DataGrid, Title and the buttons on top of the Grid
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
 			var gridStruct:LDataGridStruct=new LDataGridStruct();
   			gridStruct.columnCollection=configData.columnCollection;
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
   		
   	}
}