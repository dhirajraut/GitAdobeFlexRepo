/**
	 * Authors : LnT Infotech Team
	 * Division: CAD and Corporate Technology
 	 * Company : Lehman Brothers - Jersey City
 	 * Project : PMPortal Components
	 * Class   : It has the model implemetation menuItems of ContextMenu
	 * Date    : 18/02/2008 
	 */
package com.lehman.framework.foundation.components.datagrid
{
	 /** LDataGridMenu Class
	  *  It is the Model Implementation of menuItems of ContextMenu.
	  */
	public class LDataGridMenu
	{
	
		private var _menuLabel:String;//set the Label of the MenuItem
		private var _menuHandler:Function;//set the handler of the MenuItem
		
		//get the function Label displayed menuItem  of contextMenu
		public function get menuLabel():String{
			return _menuLabel;
		}
		//set the function Label displayed  menuItem of ContectMenu
		public function set menuLabel(menuLabel:String):void{
			_menuLabel=menuLabel;
		}
		//set the function menuhandler of MenuItem
		public function get menuHandler():Function{
			return _menuHandler;
		}
		//get the function  menuhandler of MenuItem
		public function set menuHandler(menuHandler:Function):void{
			_menuHandler=menuHandler;
		}
		

	}
}