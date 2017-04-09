/**
 * Authors : L&TInfotech 
 * Division: CAD and Corporate Technology
 * Company : Lehman Brothers - Jersey City
 * Project : PMPortal Components
 * Class   :This is actionscript file for LResourceScreen.as file.
 * Date    : 19/03/2008
 */
// ActionScript file
	import mx.utils.ColorUtil;
	import com.lehman.framework.foundation.components.datagrid.LDataGridConfig;
	import com.lehman.framework.foundation.components.datagrid.LDataGridColumn;

	import com.lehman.application.pmo.actionscripts.controllers.*;
	import com.lehman.framework.foundation.components.list.LListConfig;
	import mx.collections.ArrayCollection;
	import com.lehman.framework.foundation.components.LButton;
	import com.lehman.framework.foundation.events.LActionEvent;
	import com.lehman.framework.foundation.components.help.LHelpPanel;
	import com.lehman.framework.foundation.components.dataobjects.LHelpItem;
	import com.lehman.framework.foundation.components.dataobjects.LHelp;
	import mx.core.Application;
	import mx.controls.Alert;			
	import com.lehman.framework.foundation.events.LApplicationEvent;
	import com.lehman.application.pmo.actionscripts.PMPortalConstants;
	import com.lehman.application.pmo.actionscripts.models.TreeGridData;
	import mx.containers.TitleWindow;
	import mx.events.CloseEvent;
	import mx.managers.PopUpManager;
	import mx.controls.CheckBox;
	import mx.controls.Image;
	import flash.events.MouseEvent;
	import mx.core.IUIComponent;
	import mx.controls.Button;
	
	[Embed(source="../../resources/images/homeicon.gif")]
	private static var homeIcon:Class; //Setting HomeIcon image.
	
	
	private var colldetail:LDataGridColumn;//variable to store ldatagridcolumn object
	[Bindable]
	private var collCollection:ArrayCollection= new ArrayCollection;//variable for column collection
	[Bindable]
	private var dataCollection:ArrayCollection = new ArrayCollection;//variable for data collection
	private var dataProviderObject:TreeGridData;//object of TreeGridData class
	
	[Bindable]
    public var configObjTGrid:LDataGridConfig;//object of LDataGridConfig to set configeration setting for LDataGrid
    
	[Bindable]
	public var configObjPerson:LListConfig;//object of LListConfig to set configeration setting for list of people type
	
	[Bindable]
	public var configObjProject:LListConfig;//object of LListConfig to set configeration setting for list of project type

/*
	public function getDetails():void
	{
		Alert.show("User Implementation");
	}
*/
/**
 * Initilize data for list and datagrid.
 */
	private function init():void
	{	
		
		configObjPerson=new LListConfig();
		var apiPeople:APIClass = new APIClass;
		configObjPerson.dataCollection= apiPeople.getAssociatedPeopleDetails("284718");
		configObjPerson.listViewType="PEOPLELISTVIEW";
		configObjPerson.listLabelField="icon";
		
		configObjProject=new LListConfig();
		var apiProject:APIClass = new APIClass;
		configObjProject.dataCollection= apiProject.getAssociatedProjectDetails("284718");
		configObjProject.listViewType="PROJECTLISTVIEW";
		configObjProject.listLabelField="icon";
		
		configObjTGrid = new LDataGridConfig();
		var apiTGridColumnCollection:APIClass = new APIClass;
		configObjTGrid.gridType = "COLLAPSINGCOLUMNTGRID";
		configObjTGrid.gridTitle = "";
		configObjTGrid.TableHeaderColor= 0xf7f7f7;//0xEBEBD8;
		configObjTGrid.columnCollection = apiTGridColumnCollection.getColumnCollection();
		configObjTGrid.dataCollection =apiTGridColumnCollection.getDataCollection();
		//configObjTGrid.controlArray = customControlItem;
	}
			
		
	private function initializeCBox():void
	{
		//Initialize resourceCBox with resource types
		var resourceType:Array=new Array();
		resourceType.push({resType:PMPortalConstants.EMPLOYEE_RESOURCE_TYPE});
		resourceType.push({resType:PMPortalConstants.HARDWARE_RESOURCE_TYPE});
		resourceType.push({resType:PMPortalConstants.SOFTWARE_RESOURCE_TYPE});				
		resourceCBox.dataProvider=resourceType;
		resourceCBox.labelField="resType";
	}
	
	private function addPeopleToList(id:Button , event:MouseEvent):void
	{
		var popupColumns:TitleWindow = getShowHideWindow(id);;//creates an object of TitleWindow
		PopUpManager.addPopUp(popupColumns, id, true);
		var checkBox:CheckBox = new CheckBox(); 
	    checkBox.label = "Praveen Kumar";
	    checkBox.name = "284718";
	    //checkBox.addEventListener(Event.CHANGE,showhideCol);
	    popupColumns.addChild(checkBox);
        PopUpManager.bringToFront(popupColumns);
	}
	
	/**
        * Creates a titlewindow and pops it up on button click
        * 
        * @return TitleWindow for showing column list.
        */       
        private function getShowHideWindow(showHideColumnImg:Button):TitleWindow
        {
        	var SPACING_X : int = 0;
            var SPACING_Y : int = 0;
            var popupColumns:TitleWindow = new TitleWindow();//creates an object of TitleWindow
            popupColumns.title = "Employee List";
            popupColumns.showCloseButton = true;
            popupColumns.addEventListener("close",closePopup);
            popupColumns.styleName = "columnList";
            popupColumns.setStyle("horizontalGap",1);

            var rect:Rectangle = showHideColumnImg.getRect(showHideColumnImg);
            var pt:Point = showHideColumnImg.localToGlobal(rect.bottomRight);            

            if((pt.x + SPACING_X + popupColumns.minWidth) > root.width)
            {
                // show side
                popupColumns.x = pt.x - SPACING_X-popupColumns.minWidth;
                popupColumns.y = pt.y - SPACING_Y;
            }
            else 
            {
                // show below
                popupColumns.x = pt.x + SPACING_X;
                popupColumns.y = pt.y + SPACING_Y;    
            }
            return popupColumns;
            
        }
        
        private function closePopup(event:CloseEvent):void
        {
            event.target.visible = false;
        }

