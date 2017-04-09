   /**
	 * Authors : L&TInfotech Team
	 * Division: CAD and Corporate Technology
	 * Company : Lehman Brothers - Jersey City
	 * Project : PMPortal Components
	 * Class   : It is the wrapper class for DataGridButton. It defines the DataGridButton properties.
	 * Date    : 18/02/2008
	 */
package com.lehman.framework.foundation.components.datagrid
{
	/** LDataGridButton Class
	 *  It is the wrapper for LDataGridButton class defining the DataGridButton properties.
	 */
	public class LDataGridButton
	{
	    private var _buttonLabel:String; // label of a button
        private var _buttonHandler:Function; // function to be called on click of a button
    		
		// gets the button label    		
		public function get buttonLabel ():String
		{
			return _buttonLabel;
		}
		// sets the button label 
   		public function set buttonLabel (buttonLabel:String):void
   		{
   			_buttonLabel = buttonLabel;
   		}
   		// gets the button handler 
   		public function get buttonHandler ():Function
   		{
   			return _buttonHandler;
   		}
   		// sets the button handler 
  	 	public function set buttonHandler (buttonHandler:Function):void
  	 	{
  	 		_buttonHandler = buttonHandler;
  	 	}
	}
}