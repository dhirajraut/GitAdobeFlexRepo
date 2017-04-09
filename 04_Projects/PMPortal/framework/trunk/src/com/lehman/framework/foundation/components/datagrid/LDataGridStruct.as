/**
	 * Authors : L&T Infotech Team
 	 * Division: CAD and Corporate Technology
 	 * Company : Lehman Brothers - Jersey City
	 * Project : PMPortal Components
 	 * Class   : It is the Model Implementation of DataGridStructure.
 	 * Date    : 18/02/2008
	 */
package com.lehman.framework.foundation.components.datagrid
{
	import mx.collections.ArrayCollection;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import mx.controls.DataGrid;
	import mx.controls.dataGridClasses.DataGridColumn;
	import mx.core.ClassFactory;
	import mx.controls.Alert;
		
	/** LDataGridStruct Class
	  * It is the Model Implementation of of DataGridStructure.
	  */
	   
	public class LDataGridStruct extends DataGrid
	{
		private var _destination:String;  //to set value of the connection string.
    	private var _wsMethod:String;  //this value is set if connection type is web service
    	private var _connectionType:String;  //to set the type of connection string used.
	    private var _columnCollection:ArrayCollection;  //to display proper header data in the LDataGrid and to customize LDataGrid with configuration information.
	    private var _dataCollection:ArrayCollection;  //to display data in the LDataGrid.This collection is then set to the dataProvider property of the LDataGrid 
	    private var _tableHeaderColor:uint;  //to set the background color to the header row of the grid.
	    private var _matrixGrid:Boolean;  //If set to true provides background color to the first column of the grid same as header row of the grid.
	    private var _enableContextMenu:Boolean;  //when set to true displays context menu with custom menu settings.
	    private var _menuCollection:ArrayCollection;  //array collection of objects of class LDataGridMenu which provides menu items to be displayed in the context menu.
	    private var _gridTitle:String;  //To provide configurable title to the custom grid.
	    private var _gridTitleBackgroundColor:uint;  //To set background color to the title of the grid.
	    private var _gridTitleTextFont:String;  //To provide customized font to the title of the grid.
   		private var _gridTitleTextType:String;  //To provide customized text type to the title of the grid.
   		private var _enableAddRecord:Boolean;  //To provide customized functionality of adding a record through context menu to the grid.
   		private var _enableEditRecord:Boolean;  //provides customized functionality of editing a record through context menu to the grid
   		private var _enableDeleteRecord:Boolean;  //provides customized functionality of deleting record/records through context menu to the grid.
   		private var _enableHideRecord:Boolean;  //To provide customized functionality of hiding selected record/records through context menu to the grid.
   		private var _enableDeleteColumn:Boolean;  //provides customized functionality of deleting a column through context menu to the grid.
   		private var _enableHideColumn:Boolean;  //provides customized functionality of hiding column through context menu to the grid.
   		private var _showSeparateForm:Boolean;  //if set to true provides customized functionality of add/edit a record on separate form.
  		private var _enableHScroll:Boolean;  //if set to true provides horizontal scroll bar to the grid.
  		private var _enableVScroll:Boolean;  //if set to true provides vertical scroll bar to the grid.
   		private var _alternateBackground:Array;  //provides customized alternate colors to the rows of the custom grid.
   		private var _textOrientationVertical:Boolean;  //if set to true display the text in the first column of the grid in vertical orientation
   		private var _enableFreezeColumn:Boolean;  //if set to true provides column freeze functionality through context menu to the grid.
  		private var _enableFreezeRow:Boolean;  //if set to true provides row freeze functionality through context menu to the grid.
  	    private var _enableSearchFilter:Boolean;  //if set to true adds a text field to the LDataGridHeader and provides search functionality to the custom grid.
   		private var _enableColumnExpandandCollapse:Boolean;  //if set to true provides column expand and collapse functionality to the grid.
   		private var _enableSelectAllRows:Boolean;   //provides all rows selecting/deselecting functionality to the grid.
   		
   		private var colInfo:Array=new Array();
   		
    	// function to get the value of connection string	
   		public function get destination():String
   		{
   			return _destination;
   		}
        // function to set the value of connection string			
   		public function set destination(conn:String):void
   		{
   			_destination=conn;
   		}
   		
        //function to get the value of connection string if connection type is web service		
  	    public function get wsMethod():String
  	    {
  	    	return _wsMethod;
  	    }
        //function to set the value of connection string if connection type is web service	    
	    public function set wsMethod(method:String):void
	    {
	    	_wsMethod=method;
	    }
	    
    	//function to get the type of connection string    
	    public function get connectionType():String
	    {
	    	return _connectionType;
	    }
    	//function to get the type of connection string        
	    public function set connectionType(conn:String):void
	    {
	    	_connectionType=conn;
	    }
	    
	    //function to get the values to display data in the LDataGrid.This collection is then set to the dataProvider property of the LDataGrid  
	    public function get dataCollection():ArrayCollection
	    {
	    	return _dataCollection;
	    }
	     //function to set the values to display data in the LDataGrid.This collection is then set to the dataProvider property of the LDataGrid      
	    public function set dataCollection(coll:ArrayCollection):void   
	    {
	    	_dataCollection=coll;
	    	
	    }
	    // function to get the values to display proper header data in the LDataGrid and to customize LDataGrid with configuration information. 
	    public function get columnCollection():ArrayCollection
	    {
	    	return _columnCollection;
	    	
	    }
	    // function to set the values to display proper header data in the LDataGrid and to customize LDataGrid with configuration information.    
    	public function set columnCollection(coll:ArrayCollection):void
    	{
    		_columnCollection=coll; 
    		drawColumns(coll);  		
    	}
    	
       //	function to get the background color to the header row of the grid.
	    public function get TableHeaderColor():uint
	    {
	    	return _tableHeaderColor	;
	    }
       //	function to set the background color to the header row of the grid.	    
	    public function set TableHeaderColor(color:uint):void
	    {
	    	_tableHeaderColor=color;
	    }
	    
	    //  function to get the value whether to provide  background color to the first column of the grid same as header row of the grid.
   		public function get MatrixGrid():Boolean
   		{
   			return _matrixGrid;
   		}
        //  function to set the value whether to provide  background color to the first column of the grid same as header row of the grid.	
   		public function set MatrixGrid(bool: Boolean):void
   		{
   			_matrixGrid=bool;
   		}
   	
        // function to get the value whether to display the context menu or not		
   		public function get enableContextMenu():Boolean
   		{
   			return _enableContextMenu;	
   		}
        // function to set the value whether to display the context menu or not			
   		public function set enableContextMenu(bool: Boolean):void
   		{
   			_enableContextMenu=bool;
   		}
   		
        // function to get the array collection of objects of class LDataGridMenu which provides menu items to be displayed in the context menu.	
	    public function get menuCollection():ArrayCollection
	    {
	    	return _menuCollection;
	    }
    	// function to set the array collection of objects of class LDataGridMenu which provides menu items to be displayed in the context menu.	    
	    public function set menuCollection(coll:ArrayCollection):void
	    {
	    	_menuCollection=coll;
	    }
    	// function to get the configurable title of the datagrid    
   		public function get gridTitle():String
   		{
   			return _gridTitle;
   		}
     	// function to set the configurable title of the datagrid    	
	    public function set gridTitle(title:String):void
	    {
	    	_gridTitle=title;
	    }
	    
	    // function to get background color to the title of the grid.    
	    public function get gridTitleBackgroundColor():uint
	    {
	    	return _gridTitleBackgroundColor;	
	    }
	    // function to set background color to the title of the grid.     
	    public function set gridTitleBackgroundColor(color:uint):void
	    {
	    	_gridTitleBackgroundColor=color;
	    }
	    
    	// function To  get value to provide customized font to the title of the grid.   
	    public function get gridTitleTextFont():String
	    {
	    	return _gridTitleTextFont;
	    }
    	// function To  set value to provide customized font to the title of the grid.    
	    public function set gridTitleTextFont(conn:String):void
	    {
	    	_gridTitleTextFont=conn;
	    }
	    
    	// function to get value to provide customized text type to the title of the grid.    
	    public function get gridTitleTextType():String
	    {
	    	return _gridTitleTextType;	
	    }
    	// function to set value to provide customized text type to the title of the grid.      
	    public function set gridTitleTextType(method:String):void
	    {
	    	_gridTitleTextType=method;
	    }
	    
	    // function to get value to provide customized functionality of adding a record through context menu to the grid. 
	    public function get enableAddRecord():Boolean
	    {
	    	return _enableAddRecord;
	    }
	    // function to set value to provide customized functionality of adding a record through context menu to the grid.     
	    public function set enableAddRecord(bool: Boolean):void
	    {
	    	_enableAddRecord=bool;
	    }
	    
	   //function to get value to provide customized functionality of deleting record/records through context menu to the grid.    
	    public function get enableDeleteRecord():Boolean
	    {
	    	return _enableDeleteRecord;
	    }
	    // function to set value to provide customized functionality of deleting record/records through context menu to the grid.        
	    public function set enableDeleteRecord(bool: Boolean):void
	    {
	    	_enableDeleteRecord=bool;
	    }
	    
	    // function to get value to provide customized functionality of hiding selected record/records through context menu to the grid.  
	    public function get enableHideRecord():Boolean
	    {
	    	return _enableHideRecord;
	    }
	    // function to set value to provide customized functionality of hiding selected record/records through context menu to the grid.      
	    public function set enableHideRecord(bool: Boolean):void
	    {
	    	_enableHideRecord=bool;
	    }
	    
	    // function to get value to provide customized functionality of deleting record/records through context menu to the grid.   
	    public function get enableDeleteColumn():Boolean
	    {
	    	return _enableDeleteColumn;
	    }
	    // function to set value to provide customized functionality of deleting record/records through context menu to the grid.      
	    public function set enableDeleteColumn(bool: Boolean):void
	    {
	    	_enableDeleteColumn=bool;
	    }
	    
	    // function to get value to provide customized functionality of hiding column through context menu to the grid.  
	    public function get enableHideColumn():Boolean
	    {
	    	return _enableHideColumn;
	    }
	    // function to set value to provide customized functionality of hiding column through context menu to the grid.     
	    public function set enableHideColumn(bool: Boolean):void
	    {
	    	_enableHideColumn=bool;
	    }
	    
	    // function to get value whether to provide customized functionality of add/edit a record on separate form.  
	    public function get showSeparateForm():Boolean
	    {
	    	return _showSeparateForm;
	    }
	    // function to set value whether to provide customized functionality of add/edit a record on separate form.     
	    public function set showSeparateForm(bool: Boolean):void
	    {
	    	_showSeparateForm=bool;
	    }
	    
	    // function to get value whether to provide horizontal scroll bar to the grid.   
	    public function get enableHScroll():Boolean
	    {
	    	return _enableHScroll;
	    }
	    // function to set value whether to provide horizontal scroll bar to the grid.       
	    public function set enableHScroll(bool: Boolean):void
	    {
	    	_enableHScroll=bool;
	    }
	    
	    // function to get value whether to provide vertical scroll bar to the grid.       
	    public function get enableVScroll():Boolean
	    {
	    	return _enableVScroll;
	    }
	    // function to set value whether to provide vertical scroll bar to the grid.       	    
	    public function set enableVScroll(bool: Boolean):void
	    {
	    	_enableVScroll=bool;
	    }
	    
	    // function to get value to provide customized alternate colors to the rows of the custom grid.   
	    public function get alternateBackground():Array
	    {
	    	return _alternateBackground;
	    }
	    // function to set value to provide customized alternate colors to the rows of the custom grid.       
	    public function set alternateBackground(colors:Array):void
	    {
	    	_alternateBackground=colors;
	    }
	    
	    // function to get value whether to display the text in the first column of the grid in vertical orientation   
	    public function get textOrientationVertical():Boolean
	    {
	    	return _textOrientationVertical;
	    }
	    // function to set value whether to display the text in the first column of the grid in vertical orientation       
	    public function set textOrientationVertical(orientation: Boolean):void
	    {
	    	_textOrientationVertical=orientation;
	    }
	    
	    // function to get value whether to provides column freeze functionality through context menu to the grid.   
	    public function get enableFreezeColumn():Boolean
	    {
	    	return _enableFreezeColumn;
	    }
	    // function to set value whether to provides column freeze functionality through context menu to the grid.       
	    public function set enableFreezeColumn(bool: Boolean):void
	    {
	    	_enableFreezeColumn=bool;
	    }
	    
	    // function to get value whether to provides Row freeze functionality through context menu to the grid.       
	    public function get enableFreezeRow():Boolean
	    {
	    	return _enableFreezeRow;
	    }
	    // function to set value whether to provides Row freeze functionality through context menu to the grid.           
	    public function set enableFreezeRow(bool: Boolean):void
	    {
	    	_enableFreezeRow=bool;
	    }
	  
	    // function to get the value whether to add a text field to the LDataGridHeader and provides search functionality to the custom grid.    
	    public function get enableSearchFilter():Boolean
	    {
	    	return _enableSearchFilter;
	    }
	    // function to set the value whether to add a text field to the LDataGridHeader and provides search functionality to the custom grid.        
	    public function set enableSearchFilter(bool: Boolean):void
	    {
	    	_enableSearchFilter=bool;
	    }
	    
	    //function to get the value whether to provide column expand and collapse functionality to the grid.    
	    public function get enableColumnExpandandCollapse():Boolean
	    {
	    	return _enableColumnExpandandCollapse;
	    }
	    //function to set the value whether to provide column expand and collapse functionality to the grid.        
	    public function set enableColumnExpandandCollapse(bool: Boolean):void
	    {
	    	_enableColumnExpandandCollapse=bool;
	    }
	    
	    //function to get the value whether to provide all rows selecting/deselecting functionality to the grid.    
	    public function get enableSelectAllRows ():Boolean
	    {
	    	return _enableSelectAllRows;
	    }
	    //function to set the value whether to provide all rows selecting/deselecting functionality to the grid.        
	    public function set enableSelectAllRows (bool: Boolean):void  
	    {
	    	_enableSelectAllRows=bool;
	    }
	    
	    //function to draw columns for the LDataGrid using parameters provided by cols ArrayCollection   
	    public function drawColumns(cols:ArrayCollection):void
	    {
            for(var i:int;i<cols.length;i++){
                var column:DataGridColumn = new DataGridColumn();
                column.headerText = cols[i].columnHeader;
                column.dataField = cols[i].columnDataField;                
                column.editable=false;
                
				//disabling (or enabling) sorting on columns
                if (cols[i].columnSortable != "" && cols[i].columnSortable != null && cols[i].columnSortable == "false" ) {
                    column.sortable = false;
                }
				//setting a function for manipulating the data in some columns
                if (cols[i].columnLabelFunction != "" && cols[i].columnLabelFunction != null) {
                    column.labelFunction = cols[i].labelfunction;
                }
				//setting custom itemrenderer
                if (cols[i].columnRenderer != "" && cols[i].columnRenderer != null ) {
                    column.itemRenderer = new ClassFactory(cols[i].renderer);
                }
				//setting columns width
                if(cols[i].columnWidth && cols[i].columnWidth!=0){
                    column.width = cols[i].columnWidth;                    
                }
                //setting the visibility of a column in a datagrid
                if (cols[i].columnHide != "" && cols[i].columnHide != null && cols[i].columnHide == true) {
                    column.visible = false;
                }
				//allow wrapping in header text
	            column.headerWordWrap = true;
                colInfo.push(column);
            }
            this.columns=colInfo;

	    }
	    
	    //function to provide data to the dataProvider of the DataGrid to populate DataGrid    
  		private function loadData(dataRows:ArrayCollection):void
  		{
  			
  		}
  		
  	    //function to add row at the selected row. If no row is selected a new row is added to the end of the grid.	
  		private function addRow():void
  		{
  			
  		}
  		
  	    // function to provide screen to modify the selected row	
  		private function modifyRow():void
  		{
  			
  		}
  		
  	    //function to delete the selected row	
  		private function deleteRow():void
  		{
  			
  		}
  		
  	    //function to hide a particular row	
  		private function hideRow():void
  		{
  			
  		}
  		
  	   //function to delete a column	
  		private function deleteColumn():void
  		{
  			
  		}
  		
  	    //function to show or hide particular columns as per what the user selects in checkboxes.	
  		private function showhideCol(event:Event):void
  		{
  			
  		}
  		
  	    //function to expand columns of the LDataGrid	
  		private function expandColumns(event:MouseEvent):void
  		{
  			
  		}
  		
  	    // function to collapse columns of the LDataGrid	
  		private function collpaseColumns(event:MouseEvent):void
 		{
 	
 		}
 		
 	    //function to refresh the LDataGrid	
  		private function refresh():void
  		{
  			
  		}

	}
}