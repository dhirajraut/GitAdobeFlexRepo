   /**
	* Authors : L&T Infotech Team
 	* Division: CAD and Corporate Technology
	* Company : Lehman Brothers - Jersey City
	* Project : PMPortal Components
 	* Class   : It is the Model Implementation of DataGridColumn.
 	* Date    : 18/02/2008
 	*/
 	
package com.lehman.framework.foundation.components.datagrid
{
	/** LDataGridColumn Class
	 *  It is the Model Implementation of DataGridColumn.
	 */
	 
	public class LDataGridColumn
	{
		private var _columnHeader:String;  //to set the header text for the column.
    	private var _columnWidth:Number;   //to set the width of the column.
   	    private var _columnDataField:String;  //set the data field of the column.
    	private var _columnLabelFunction:Function;  //to set the handler for the LabelFunction of the column.
    	private var _columnDataType:String;  //to set the data type for the column.
    	private var _columnValidate:Boolean;  //set whether to validate the column data or not.
    	private var _columnValidateHandler:Function;  //set the user defined handler to validate column data.
    	private var _columnRenderer:Class;  //to set the user defined renderer for the column.
    	private var _columnHide:Boolean;  //to set the visibility of the column.
    	private var _columnSortable:Boolean;  //to set whether to make the column sortable or not.
    	private var _columnSummation:Boolean;  //If columnSummation attribute is set to true then the sum of those columns is shown in total column.
    	private var _columnGroupHeaderId:String;  //used in column expanding and collapsing.
    	private var _columnGroupId:String;  //used in column expanding and collapsing.
   		private var _columnHeaderImage:String;  //to display the image as column header.
   		
   	   //	function to get the header text of a column
   		public function get columnHeader():String
   		{
   			return _columnHeader;
   		}
    	// function to set the header text of a column	
   		public function set columnHeader(columnHeader:String):void
   		{
   			_columnHeader=columnHeader;
   		}
   		
    	// function to get the width of a column	
   		public function get columnWidth():Number
   		{
   			return _columnWidth;
   		}
    	// function to set the width of a column	
   		public function set columnWidth(columnWidth:Number):void
   		{
   			_columnWidth=columnWidth;
   		}
   		
    	// function to get the data field of a column.	
   		public function get columnDataField():String
   		{
   			return _columnDataField;
   		}
    	// function to set the data field of a column	
  		public function set columnDataField(columnDataField:String):void
  		{
  			_columnDataField=columnDataField;
  		}
  		
  	    // function to get the label function of a column	
  		public function get columnLabelFunction():Function
  		{
  			return _columnLabelFunction;
  		}
    	// function to set the label function of a column	
  		public function set columnLabelFunction(columnLabelFunction:Function):void
  		{
  			_columnLabelFunction=columnLabelFunction;
  		}
  		
    	// function to get the data type of a column	
  		public function get columnDataType():String
  		{
  			return _columnDataType;
  		}
    	// function to set the datatype of a column	
 		public function set columnDataType(columnDataType:String):void
 		 {
 		 	_columnDataType=columnDataType;
 		 }
 		 
    	// function to get the value whether to validate the column data or not	 
 		public function get columnValidate():Boolean
 		  {
 		  	return _columnValidate;
 		  }
 	   // function to set the value whether to validate the column data or not	 	  
  		public function set columnValidate(columnValidate: Boolean):void  
  		{
  			_columnValidate=columnValidate;
  		}
  		
    	//	function to get the user defined handler to validate column data.	
  		public function get columnValidateHandler():Function
  		{
  			return _columnValidateHandler;
  		}
    	//	function to set the user defined handler to validate column data.		
  		public function set columnValidateHandler(columnValidateHandler:Function):void
  		{
  			_columnValidateHandler=columnValidateHandler;
  		}
        // function to get the user defined renderer for the column.
  		public function get columnRenderer():Class
  		{
  			return _columnRenderer;
  		}
        // function to set the user defined renderer for the column.		
  		public function set columnRenderer(columnRenderer:Class):void
  		{
  			_columnRenderer=columnRenderer;
  		}
  
       // function to get the visibility of the column.
 		public function get columnHide():Boolean
 		 {
 		 	return _columnHide;
 		 }
 	     // function to set the visibility of the column.	 
  		public function set columnHide(columnHide:Boolean):void
  		{
  			_columnHide=columnHide;
  		}
  		
      	// function to get whether to make the column sortable or not.
  		public function get columnSortable():Boolean
  		{
  			return _columnSortable;
  		}
    	// function to set whether to make the column sortable or not.	
  		public function set columnSortable(columnSortable:Boolean):void
  		{
   			_columnSortable=columnSortable;	
  		}
  	
    	//function to get the value to check whether the column's values would be summed.
  		public function get columnSummation():Boolean
  		{
  			return _columnSummation;
  		}
    	//function to set the value to check whether the column's values would be summed.	
  		public function set columnSummation(columnSummation:Boolean):void
  		{
  			_columnSummation=columnSummation;
  		}
  		
    	// function to get value to be used in expanding and collapsing columns	
  		public function get columnGroupHeaderId():String
  		{
  			return _columnGroupHeaderId;
  		}
    	// function to set value to be used in expanding and collapsing columns		
 	    public function set columnGroupHeaderId(columnGroupHeaderId:String):void
 	    {
 	    	_columnGroupHeaderId=columnGroupHeaderId;
 	    }
 	 
    	// function to get value to be used in expanding and collapsing columns	    
 	    public function get columnGroupId():String
 	    {
 	    	return _columnGroupId;
 	    }
    	// function to set value to be used in expanding and collapsing columns		    
  		public function set columnGroupId(columnGroupId:String):void
  		{
  			_columnGroupId=columnGroupId;
  		}
  		
    	//	function to get the value to display the image as column header
		public function get columnHeaderImage():String
		{
			return _columnHeaderImage;
		}
	   // function to set the value to display the image as column header	
   		public function set columnHeaderImage(columnHeaderImage:String):void
  		{
  			_columnHeaderImage=columnHeaderImage;
  		}
	}
}