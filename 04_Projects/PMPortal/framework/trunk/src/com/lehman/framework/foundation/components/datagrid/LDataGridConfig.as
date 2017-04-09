        /**
         * Authors : LnT Infotech Team
         * Division: CAD and Corporate Technology
         * Company : Lehman Brothers - Jersey City
         * Project : PMPortal Components
         * Class   : It has the model implemetation of Configurable properties for the custom DataGrid 
         * Date    : 18/02/2008
         */
         
package com.lehman.framework.foundation.components.datagrid
{       
	import mx.collections.ArrayCollection;
	
	  /** LDataGridConfig Class
	   *  It is the Model Implementation of Configurable properties for the custom DataGrid .
	   */ 
	 
	public class LDataGridConfig
	{
		
		private var _destination:String;// destination of Connection String
    	private var _wsMethod:String;//Connection type is webService
    	private var _connectionType:String;// connectionType is a type of connection string,i.e. HTTP Service,  webService
    	private var _columnCollection:ArrayCollection;//_columnCollection is an array collection of objects of class LDataGridColumn
    	private var _dataCollection:ArrayCollection;//_dataCollection is an array collection which provides data to be displayed in the LDataGrid
    	private var _tableHeaderColor:uint;// background color to the header row of the grid.
    	private var _matrixGrid:Boolean;//background color to the first column of the grid same as header row of the grid
   	    private var _enableContextMenu:Boolean;// Context Menu with Custom Menu settings.
   		private var _menuCollection:ArrayCollection;//Displayed  menu items in the Contextmenu 
   		private var _gridTitle:String;//Title of Custom DataGrid
   		private var _gridTitleBackgroundColor:uint;//background color to the title of the grid.
   		private var _gridTitleTextFont:String;//font to the title of the grid
  	    private var _gridTitleTextType:String;//text type to the title of the grid.
   		private var _enableAddRecord:Boolean;//adding a record through context menu to the grid.
   		private var _enableEditRecord:Boolean;//editing a record through context menu to the grid
   		private var _enableDeleteRecord:Boolean;//deleting record/records through context menu to the grid
   		private var _enableHideRecord:Boolean;//hiding selected record/records through context menu to the grid.
   		private var _enableDeleteColumn:Boolean;//deleting a column through context menu to the grid.
   		private var _enableHideColumn:Boolean;// hiding column through context menu to the grid.
   		private var _showSeparateForm:Boolean;//add/edit a record on separate form.
   		private var _enableHScroll:Boolean;//horizontal scroll bar to the grid.
   		private var _enableVScroll:Boolean;//vertical scroll bar to the grid.
   		private var _alternateBackground:Array;//alternate colors to the rows of the custom grid.
   		private var _textOrientationVertical:Boolean;//display the text in the first column of the grid in vertical orientation
   		private var _enableFreezeColumn:Boolean;//freeze functionality through context menu to the grid
   		private var _enableFreezeRow:Boolean;//row freeze functionality through context menu to the grid.
   		private var _enableSearchFilter:Boolean;//provides search functionality to the custom grid.
   		private var _enableColumnExpandandCollapse:Boolean;//column expand and collapse functionality to the grid.
   		private var _enableSelectAllRows:Boolean; // rows selecting/deselecting functionality to the grid.
  		private var _buttonArray:ArrayCollection;//collection of objects of LDataGridButton class
  		
  		// function to get value  destination of Connection String
  		public function get destination ():String{
  			return _destination;
  		}
  		// function  to set value destination of Connection String
  	    public function set destination (conn:String):void{
  	    	_destination=conn;
  	    }
  	    // function to get value of Connection type is webService
        public function get wsMethod ():String{
        	return _wsMethod;
        }
        // function set value of Connection type is webService
   		public function set wsMethod (method:String):void{
   			_wsMethod=method;
   		}
   		//function get value of connectionType is a type of connection string,i.e. HTTP Service,  webService
   		public function get connectionType ():String{
   			return _connectionType;
   		}
   		//function set value of connectionType is a type of connection string,i.e. HTTP Service,  webService
   		public function set connectionType (conn:String):void{
   			_connectionType=conn;
   		} 
   		//function get the value  array collection of objects of class LDataGridColumn 
   		public function get columnCollection():ArrayCollection{
   			return _columnCollection;
   		}
   		//function set the value  array collection of objects of class LDataGridColumn 
   		public function set columnCollection(coll:ArrayCollection):void{
   			_columnCollection=coll;
   		}
   		//function get the value array collection which provides data to be displayed in the LDataGrid
   		public function get dataCollection ():ArrayCollection{
   			return _dataCollection;
   		}
   		//function set the value array collection which provides data to be displayed in the LDataGrid
   		public function set dataCollection (coll:ArrayCollection):void{
   			_dataCollection=coll;
   		} 
    	//function get the value of background color to the header row of the grid.
   		public function get TableHeaderColor ():uint{
   			return _tableHeaderColor;
   			
   		}
   		//function set the value of background color to the header row of the grid.
    	public function set TableHeaderColor (color:uint):void{
    		_tableHeaderColor=color;	
    	}
    	//function get the value of background color to the first column of the grid same as header row of the grid
   		public function get MatrixGrid ():Boolean{
   			return _matrixGrid;
   		}
   		//function set the value of background color to the first column of the grid same as header row of the grid
   		public function set MatrixGrid (bool: Boolean):void{
   			_matrixGrid=bool;
   		}
   		// function get the value of Context Menu with Custom Menu settings.
   		public function get enableContextMenu ():Boolean{
   			return _enableContextMenu;
   		}
   		// function set the value of Context Menu with Custom Menu settings.
   		public function set enableContextMenu (bool: Boolean):void{
   			     _enableContextMenu=bool;
   			}
   			//function get the value Displayed  menu items in the Contextmenu 
	   	public function get menuCollection ():ArrayCollection{
	   	      return _menuCollection;
	   	}
	   	//function set the value Displayed  menu items in the Contextmenu 
       	public function set menuCollection (coll:ArrayCollection):void{
       	         _menuCollection=coll;
       	}
       	//function get the value Title of Custom DataGrid
   	   	public function get gridTitle ():String{
   	   	      return _gridTitle;
   	   	}
   	   	//function set the value Title of Custom DataGrid
   	  	public function set gridTitle (title:String):void{
   	  	       _gridTitle=title;
   	  	}
   	  	// function get value of background color to the title of the grid.
   	  	public function get gridTitleBackgroundColor ():uint{
   	  		 return _gridTitleBackgroundColor;
   	  	}
   	  	//function set value of background color to the title of the grid.
   		public function set gridTitleBackgroundColor (color:uint):void{
   			_gridTitleBackgroundColor=color;
   		}
   		//function get value of font to the title of the grid
   		public function get gridTitleTextFont ():String{
   	          return _gridTitleTextFont;
   		}
   		//function set value of font to the title of the grid
   		public function set gridTitleTextFont (conn:String):void{
   			 _gridTitleTextFont=conn;
   		}
   		//function get value  of text type to the title of the grid.
   		public function get gridTitleTextType ():String{
   			return _gridTitleTextType;
   		}
   		//function set value of text type to the title of the grid.
   		public function set gridTitleTextType (method:String):void{
   			_gridTitleTextType=method;
   		}
   		//function get value of adding a record through context menu to the grid.
   		public function get enableAddRecord ():Boolean{
   			return _enableAddRecord;
   		}
   		//function set value of adding a record through context menu to the grid.
   		public function set enableAddRecord (bool: Boolean):void{
   			_enableAddRecord=bool;
   		}
   		//function get value of editing a record through context menu to the grid
   		public function get enableEditRecord ():Boolean{
   			return _enableEditRecord;
   		}
   		//function set value of editing a record through context menu to the grid
   		public function set enableEditRecord (bool: Boolean):void{
   			_enableEditRecord=bool;
   		}
   		//function get value of deleting record/records through context menu to the grid
   		public function get enableDeleteRecord ():Boolean{
   			return _enableDeleteRecord;
   		}
   		//function set value of deleting record/records through context menu to the grid
   		public function set enableDeleteRecord (bool: Boolean):void{
   			_enableDeleteRecord=bool;
   		}
   		// function get value of  hiding selected record/records through context menu to the grid.
   		public function get enableHideRecord ():Boolean{
   			return _enableHideRecord;
   		}
   		// function set value of  hiding selected record/records through context menu to the grid.
   		public function set enableHideRecord (bool: Boolean):void{
   			_enableHideRecord=bool;
   		}
   		// function get value of deleting a column through context menu to the grid.
   		public function get enableDeleteColumn ():Boolean{
   			return _enableDeleteColumn;
   		}
   		//function set value of deleting a column through context menu to the grid.
   		public function set enableDeleteColumn (bool: Boolean):void{
   			_enableDeleteColumn=bool;
   		}
   		// function get value of hiding column through context menu to the grid.
   		public function get enableHideColumn ():Boolean{
   			return _enableHideColumn;
   		}
   		//function set value of hiding column through context menu to the grid.
   		public function set enableHideColumn (bool: Boolean):void{
   			_enableHideColumn=bool;
   		}
   		// function get value of add/edit a record on separate form.
   		public function get showSeparateForm ():Boolean{
   			return _showSeparateForm;
   		}
   		//function set value of add/edit a record on separate form.
   		public function set showSeparateForm (bool: Boolean):void{
   			_showSeparateForm=bool;
   		}
   		//function get value of horizontal scroll bar to the grid.
  	    public function get enableHScroll ():Boolean{
  	    	return _enableHScroll;
  	    }
  	    // function set value of horizontal scroll bar to the grid.
   		public function set enableHScroll (bool: Boolean):void{
   			_enableHScroll=bool;
   		}
   		//function get value of vertical scroll bar to the grid.
   		public function get enableVScroll ():Boolean{
   			return _enableVScroll;
   		}
   		//function set value of vertical scroll bar to the grid.
   		public function set enableVScroll (bool: Boolean):void{
   			_enableVScroll=bool;
   		}
   		//function get value of alternate colors to the rows of the custom grid.
   		public function get alternateBackground ():Array{
   			return _alternateBackground;
   		}
   		//function set value of alternate colors to the rows of the custom grid.
   		public function set alternateBackground (colors:Array):void{
   			_alternateBackground=colors;
   		}
   		//function get value of display the text in the first column of the grid in vertical orientation
   		public function get textOrientationVertical ():Boolean{
   			return _textOrientationVertical;
   		}
   		//function set value of display the text in the first column of the grid in vertical orientation
   		public function set textOrientationVertical (orientation: Boolean):void{
   			_textOrientationVertical=orientation;
   		}
   		//function get the  freeze functionality through context menu to the grid
   		public function get enableFreezeColumn ():Boolean{
   			return _enableFreezeColumn;
   		}
   		//function set the  freeze functionality through context menu to the grid
   		public function set enableFreezeColumn (bool: Boolean):void{
   			enableFreezeColumn=bool;
   		}
   		//function get  row freeze functionality through context menu to the grid.
   		public function get enableFreezeRow ():Boolean{
   			return _enableFreezeRow;
   		}
   		//function set  row freeze functionality through context menu to the grid.
   		public function set enableFreezeRow (bool: Boolean):void{
   			_enableFreezeRow=bool;
   		}
   		// get the function provides search functionality to the custom grid.
   		public function get enableSearchFilter ():Boolean{
   			return _enableSearchFilter;
   		}
   		// set the function  provides search functionality to the custom grid.
   		public function set enableSearchFilter (bool: Boolean):void{
   			_enableSearchFilter=bool;
   		}
   		//set the function column expand and collapse functionality to the grid.
   		public function get enableColumnExpandandCollapse ():Boolean{
   			return _enableColumnExpandandCollapse;
   		}
   		//get the function column expand and collapse functionality to the grid.
  	    public function set enableColumnExpandandCollapse (bool: Boolean):void{
  	    	_enableColumnExpandandCollapse=bool;
  	    }
  	    //get the function rows selecting/deselecting functionality to the grid.
   		public function get enableSelectAllRows ():Boolean{
   			return _enableSelectAllRows;
   		}
   		//set the function rows selecting/deselecting functionality to the grid.
   		public function set enableSelectAllRows (bool: Boolean):void{
   			_enableSelectAllRows=bool;
   		}
   		// get the function collection of objects of LDataGridButton class 
   		public function get buttonArray ():ArrayCollection{
   			return _buttonArray;
   		}
   		//set the function collection of objects of LDataGridButton class 
   		public function set buttonArray (buttonArray: ArrayCollection):void{
   			_buttonArray=buttonArray;
   		}   



	}
}