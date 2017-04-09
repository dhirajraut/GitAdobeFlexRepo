/**
 * Authors : L&TInfotech 
 * Division: CAD and Corporate Technology
 * Company : Lehman Brothers - Jersey City
 * Project : PMPortal
 * Class   : It defines the APIs for the resource action screen.
 * Date    : 19/03/2008
 */
package com.lehman.application.pmo.actionscripts.controllers
{
	/** 
	 * Asset APIClass
	 * Asset class describe the APIs for the resource action screen.
	 */
	import mx.collections.ArrayCollection;	
	import com.lehman.application.pmo.actionscripts.models.*;
	import com.lehman.application.pmo.actionscripts.models.AssociatedPeopleDetail;
	import com.lehman.framework.foundation.components.datagrid.LDataGridColumn;
	
	public class APIClass
	{
		/**
		 * @return the direct reporting peoples for the given employee ID.
		 */
		public function getDirectReports(empID:String):ArrayCollection
		{
			 return null;	
		}
		
		/**
		 * @return the all reporting peoples for the given employee ID.
		 */
		public function getAllReports(empID:String):ArrayCollection
		{
			return null;	
		}
		
		/**
		 * @return the list of the projetcs.
		 */
		public function getProjects():ArrayCollection
		{
			return null;	
		}
		
		/**
		 * @return the details of the projetcs and list of people working on that project.
		 */
		public function getAssociatedProjectDetails(empID:String):ArrayCollection
		{
			var associatedProjectCollection:ArrayCollection= new ArrayCollection;
			var personProjectCollection1:ArrayCollection= new ArrayCollection;
			var personProjectCollection2:ArrayCollection= new ArrayCollection;
			
			var subordinateDetail1:AssociatedPeopleDetail = new AssociatedPeopleDetail;
			subordinateDetail1.projectID="284757";
			subordinateDetail1.projectName="Project A";
			//subordinateDetail1.imageSource="gui/trunk/flex/pmo/src/com/lehman/application/pmo/resources/images/folder.jpg";
			
			var personProjectObject1:PeopleDetail = new PeopleDetail();
			personProjectObject1.empID = "1001";
			personProjectObject1.empName="Aram Robert";
			personProjectObject1.allocation="50%";
			personProjectObject1.actuals="20%";
			personProjectCollection1.addItem(personProjectObject1);					
			subordinateDetail1.PeopleDetails=personProjectCollection1;
			
			var personProjectObject2:PeopleDetail = new PeopleDetail();
			personProjectObject2.empID = "1001";
			personProjectObject2.empName="Parker Keishia";
			personProjectObject2.allocation="50%";
			personProjectObject2.actuals="20%";
			personProjectCollection1.addItem(personProjectObject2);					
			subordinateDetail1.PeopleDetails=personProjectCollection1;
			
			var myFactCollection:ArrayCollection = new ArrayCollection();
			var myName:Fact = new Fact();
			myName.Name = "Financial Cut Down";
			myName.Value = "$ 10,000";
			myFactCollection.addItem(myName);
			
			var myAge:Fact = new Fact();
			myAge.Name = "Status ";
			myAge.Value = "Open";
			myFactCollection.addItem(myAge);
			
			var myDesignation:Fact = new Fact();
			myDesignation.Name = "Scheduled";
			myDesignation.Value = " 25th March 2008";
			myFactCollection.addItem(myDesignation);
			
			var myTechnology:Fact = new Fact();
			myTechnology.Name = "Start Date";
			myTechnology.Value = "1st April 2008";
			myFactCollection.addItem(myTechnology);
			subordinateDetail1.Fact = myFactCollection;
			associatedProjectCollection.addItem(subordinateDetail1);
			
			 var subordinateDetail2:AssociatedPeopleDetail = new AssociatedPeopleDetail;
			subordinateDetail2.projectID="284758";
			subordinateDetail2.projectName="Project B";
						
			var personProjectObject3:PeopleDetail = new PeopleDetail();
			personProjectObject3.empID = "1002";
			personProjectObject3.empName="Aram Robert";
			personProjectObject3.allocation="50%";
			personProjectObject3.actuals="20%";
			personProjectCollection2.addItem(personProjectObject3);
			
			var personProjectObject4:PeopleDetail = new PeopleDetail();
			personProjectObject4.empID = "1001";
			personProjectObject4.empName="Deigo Canalda";
			personProjectObject4.allocation="50%";
			personProjectObject4.actuals="20%";
			personProjectCollection2.addItem(personProjectObject4);
			
			subordinateDetail2.PeopleDetails = personProjectCollection2
			associatedProjectCollection.addItem(subordinateDetail2);
			
			return associatedProjectCollection;		
		}
		
		/**
		 * This function return object of People fact Class.
		 **/
		public function getPeopleFact(empID:String):Object
		{
			return null;
		}		
		
		/**
		 * This function return the details of the Employees and list of working project.
		 **/
		public function getAssociatedPeopleDetails(empID:String):ArrayCollection
		{
			var associatedProjectCollection:ArrayCollection= new ArrayCollection;
			var personProjectCollection1:ArrayCollection= new ArrayCollection;
			var personProjectCollection2:ArrayCollection= new ArrayCollection;
			
			var subordinateDetail1:AssociatedProjectDetail = new AssociatedProjectDetail;
			subordinateDetail1.empID="284757";
			subordinateDetail1.empName="Deigo Canalda";
			subordinateDetail1.imageSource="com/lehman/application/pmo/resources/images/speed.jpg";
			
			var personProjectObject1:ProjectDetail = new ProjectDetail();
			personProjectObject1.projectID = "1001";
			personProjectObject1.projectName="PMPortal";
			personProjectObject1.allocation="50%";
			personProjectObject1.actuals="40%";
			personProjectCollection1.addItem(personProjectObject1);
			
			var personProjectObject2:ProjectDetail = new ProjectDetail();
			personProjectObject2.projectID = "1002";
			personProjectObject2.projectName="KMPortal";
			personProjectObject2.allocation="30%";
			personProjectObject2.actuals="60%";
			personProjectCollection1.addItem(personProjectObject2);
			
			subordinateDetail1.ProjectDetails=personProjectCollection1;
			var myFactCollection:ArrayCollection = new ArrayCollection();
			var myName:Fact = new Fact();
			myName.Name = "Employee ID";
			myName.Value = "284715";
			myFactCollection.addItem(myName);
			
			var myAge:Fact = new Fact();
			myAge.Name = "Employee Type";
			myAge.Value = "Software Engineer";
			myFactCollection.addItem(myAge);
			
			var myDesignation:Fact = new Fact();
			myDesignation.Name = "Business Unit";
			myDesignation.Value = "BFS";
			myFactCollection.addItem(myDesignation);
			
			var myTechnology:Fact = new Fact();
			myTechnology.Name = "IT";
			myTechnology.Value = "Manufacturing IT";
			myFactCollection.addItem(myTechnology);
			subordinateDetail1.Fact = myFactCollection;
			associatedProjectCollection.addItem(subordinateDetail1);
			
			 var subordinateDetail2:AssociatedProjectDetail = new AssociatedProjectDetail;
			subordinateDetail2.empID="284758";
			subordinateDetail2.empName="Diego Voss";
			subordinateDetail2.imageSource="com/lehman/application/pmo/resources/images/voss.jpg";
			
			var personProjectObject3:ProjectDetail = new ProjectDetail();
			personProjectObject3.projectID = "1002";
			personProjectObject3.projectName="KMPortal";
			personProjectObject3.allocation="50%";
			personProjectObject3.actuals="40%";
			personProjectCollection2.addItem(personProjectObject3);
			
			var personProjectObject4:ProjectDetail = new ProjectDetail();
			personProjectObject4.projectID = "1001";
			personProjectObject4.projectName="GMPortal";
			personProjectObject4.allocation="50%";
			personProjectObject4.actuals="40%";
			personProjectCollection2.addItem(personProjectObject4);		
			
			subordinateDetail2.ProjectDetails = personProjectCollection2
			associatedProjectCollection.addItem(subordinateDetail2);
			
			//subordinateDetail1.personProjectDetails
			
			return associatedProjectCollection;	
		}
		
		/**
		 * This function return object of Project fact Class.
		 */
		public function getProjectFact(projectID:String):Object
		{
			return null;
		}
		/**
		 * This function return object of Fiscal Details Class.
		 */		
		public function getFiscalDetails(empID:String):ArrayCollection
		{
			return null;
		}
		
		/**
		 * This function return object of Deliverable class.
		 */
		public function getDeliverables(projectID:String):Object
		{
			return null;
		}
		
		/**
		 * This function return array of datagrid column collection.
		 */
		public function getColumnCollection():ArrayCollection
		{
			var collCollection:ArrayCollection= new ArrayCollection();
			
			var colProperty1:LDataGridColumn = new LDataGridColumn;
			colProperty1.columnHeader="Project";
			colProperty1.columnDataField = "name";
			colProperty1.columnGroupId = "";
			colProperty1.columnGroupHeaderId = "";
			colProperty1.IconColumn = false;
			colProperty1.columnWidth = 100;				
			collCollection.addItem(colProperty1);

			var colProperty2:LDataGridColumn = new LDataGridColumn;
			colProperty2.columnHeader="name";
			colProperty2.columnDataField = "empName";
			colProperty2.columnGroupId = "Name";
			colProperty2.columnGroupHeaderId = "Name";
			colProperty2.IconColumn = false;
			colProperty2.columnWidth = 150;				
			collCollection.addItem(colProperty2);

			var colProperty3:LDataGridColumn = new LDataGridColumn;
			colProperty3.columnHeader="Jan";
			colProperty3.columnDataField = "Q1Jan2008";
			colProperty3.columnGroupId = "2008";
			colProperty3.columnGroupHeaderId = "Q1";
			colProperty3.IconColumn = true;
			colProperty3.columnWidth = 40;				
			collCollection.addItem(colProperty3);
			
			var colProperty4:LDataGridColumn = new LDataGridColumn;
			colProperty4.columnHeader="Feb";
			colProperty4.columnDataField = "Q1Feb2008";
			colProperty4.columnGroupId = "2008";
			colProperty4.columnGroupHeaderId = "Q1";
			colProperty4.IconColumn = false;
			colProperty4.columnWidth = 40;				
			collCollection.addItem(colProperty4);
			
			var colProperty5:LDataGridColumn = new LDataGridColumn;
			colProperty5.columnHeader="Mar";
			colProperty5.columnDataField = "Q1Mar2008";
			colProperty5.columnGroupId = "2008";
			colProperty5.columnGroupHeaderId = "Q1";
			colProperty5.IconColumn = false;
			colProperty5.columnWidth = 40;				
			collCollection.addItem(colProperty5);
			
			var colProperty6:LDataGridColumn = new LDataGridColumn;
			colProperty6.columnHeader="Apr";
			colProperty6.columnDataField = "Q2Apr2008";
			colProperty6.columnGroupId = "2008";
			colProperty6.columnGroupHeaderId = "Q2";
			colProperty6.IconColumn = true;
			colProperty6.columnWidth = 40;				
			collCollection.addItem(colProperty6);
			
			var colProperty7:LDataGridColumn = new LDataGridColumn;
			colProperty7.columnHeader="May";
			colProperty7.columnDataField = "Q2May2008";
			colProperty7.columnGroupId = "2008";
			colProperty7.columnGroupHeaderId = "Q2";
			colProperty7.IconColumn = false;
			colProperty7.columnWidth = 40;				
			collCollection.addItem(colProperty7);
			
			var colProperty8:LDataGridColumn = new LDataGridColumn;
			colProperty8.columnHeader="Jun";
			colProperty8.columnDataField = "Q2Jun2008";
			colProperty8.columnGroupId = "2008";
			colProperty8.columnGroupHeaderId = "Q2";
			colProperty8.IconColumn = false;
			colProperty8.columnWidth = 40;				
			collCollection.addItem(colProperty8);
			
			var colProperty9:LDataGridColumn = new LDataGridColumn;
			colProperty9.columnHeader="Jul";
			colProperty9.columnDataField = "Q3Jul2008";
			colProperty9.columnGroupId = "2008";
			colProperty9.columnGroupHeaderId = "Q3";
			colProperty9.IconColumn = true;
			colProperty9.columnWidth = 40;				
			collCollection.addItem(colProperty9);
			
			var colProperty10:LDataGridColumn = new LDataGridColumn;
			colProperty10.columnHeader="Aug";
			colProperty10.columnDataField = "Q3Aug2008";
			colProperty10.columnGroupId = "2008";
			colProperty10.columnGroupHeaderId = "Q3";
			colProperty10.IconColumn = false;
			colProperty10.columnWidth = 40;				
			collCollection.addItem(colProperty10);
			
			var colProperty11:LDataGridColumn = new LDataGridColumn;
			colProperty11.columnHeader="Sep";
			colProperty11.columnDataField = "Q3Sep2008";
			colProperty11.columnGroupId = "2008";
			colProperty11.columnGroupHeaderId = "Q3";
			colProperty11.IconColumn = false;
			colProperty11.columnWidth = 40;				
			collCollection.addItem(colProperty11);
			
			var colProperty12:LDataGridColumn = new LDataGridColumn;
			colProperty12.columnHeader="Oct";
			colProperty12.columnDataField = "Q4Oct2008";
			colProperty12.columnGroupId = "2008";
			colProperty12.columnGroupHeaderId = "Q4";
			colProperty12.IconColumn = true;
			colProperty12.columnWidth = 40;				
			collCollection.addItem(colProperty12);
			
			var colProperty13:LDataGridColumn = new LDataGridColumn;
			colProperty13.columnHeader="Nov";
			colProperty13.columnDataField = "Q4Nov2008";
			colProperty13.columnGroupId = "2008";
			colProperty13.columnGroupHeaderId = "Q4";
			colProperty13.IconColumn = false;
			colProperty13.columnWidth = 40;				
			collCollection.addItem(colProperty13);
			
			var colProperty14:LDataGridColumn = new LDataGridColumn;
			colProperty14.columnHeader="Dec";
			colProperty14.columnDataField = "Q4Dec2008";
			colProperty14.columnGroupId = "2008";
			colProperty14.columnGroupHeaderId = "Q4";
			colProperty14.IconColumn = false;
			colProperty14.columnWidth = 40;				
			collCollection.addItem(colProperty14);
			
			var colProperty15:LDataGridColumn = new LDataGridColumn;
			colProperty15.columnHeader="Jan";
			colProperty15.columnDataField = "Q1Jan2009";
			colProperty15.columnGroupId = "2009";
			colProperty15.columnGroupHeaderId = "Q1";
			colProperty15.IconColumn = true;
			colProperty15.columnWidth = 40;				
			collCollection.addItem(colProperty15);
			
			var colProperty16:LDataGridColumn = new LDataGridColumn;
			colProperty16.columnHeader="Feb";
			colProperty16.columnDataField = "Q1Feb2009";
			colProperty16.columnGroupId = "2009";
			colProperty16.columnGroupHeaderId = "Q1";
			colProperty16.IconColumn = false;
			colProperty16.columnWidth = 40;				
			collCollection.addItem(colProperty16);
			
			var colProperty17:LDataGridColumn = new LDataGridColumn;
			colProperty17.columnHeader="Mar";
			colProperty17.columnDataField = "Q1Mar2009";
			colProperty17.columnGroupId = "2009";
			colProperty17.columnGroupHeaderId = "Q1";
			colProperty17.IconColumn = false;
			colProperty17.columnWidth = 40;				
			collCollection.addItem(colProperty17);
			
			var colProperty18:LDataGridColumn = new LDataGridColumn;
			colProperty18.columnHeader="Apr";
			colProperty18.columnDataField = "Q2Apr2009";
			colProperty18.columnGroupId = "2009";
			colProperty18.columnGroupHeaderId = "Q2";
			colProperty18.IconColumn = true;
			colProperty18.columnWidth = 40;				
			collCollection.addItem(colProperty18);
			
			var colProperty19:LDataGridColumn = new LDataGridColumn;
			colProperty19.columnHeader="May";
			colProperty19.columnDataField = "Q2May2009";
			colProperty19.columnGroupId = "2009";
			colProperty19.columnGroupHeaderId = "Q2";
			colProperty19.IconColumn = false;
			colProperty19.columnWidth = 40;				
			collCollection.addItem(colProperty19);
			
			var colProperty20:LDataGridColumn = new LDataGridColumn;
			colProperty20.columnHeader="Jun";
			colProperty20.columnDataField = "Q2Jun2009";
			colProperty20.columnGroupId = "2009";
			colProperty20.columnGroupHeaderId = "Q2";
			colProperty20.IconColumn = false;
			colProperty20.columnWidth = 40;				
			collCollection.addItem(colProperty20);
			
			return collCollection;
		}
		
		/**
		 * This function return arraycollection of data.
		 */
		public function getDataCollection():ArrayCollection
		{
			var dataCollection:ArrayCollection = new ArrayCollection();
			var dataProviderObject:TreeGridData = new TreeGridData();
				
				var sampleVo1 : TreeGridData = new TreeGridData();
				sampleVo1.id = 1;
				sampleVo1.name = "Project";
				sampleVo1.project = "Project";
				sampleVo1.type = "Main";
				sampleVo1.desc = "All Project";
				sampleVo1.statusIcon = "statusIcon";
				sampleVo1.children = new ArrayCollection();				
				
				var sampleVo1_3 : TreeGridData	= new TreeGridData();
				sampleVo1_3.id = 4;
				sampleVo1_3.name = "Project A";
				sampleVo1_3.type = "Budget";
				sampleVo1_3.empName = "Aram Robert";
				sampleVo1_3.Q1Jan2008 = "50%";
				sampleVo1_3.Q1Feb2008 = "50%";
				sampleVo1_3.Q1Mar2008 = "50%";
				sampleVo1_3.Q2Apr2008 = "50%";
				sampleVo1_3.Q2May2008 = "50%";
				sampleVo1_3.Q2Jun2008 = "50%";
				sampleVo1_3.Q3Jul2008 = "50%";
				sampleVo1_3.Q3Aug2008 = "50%";
				sampleVo1_3.Q3Sep2008 = "50%";
				sampleVo1_3.Q4Oct2008 = "50%";
				sampleVo1_3.Q4Nov2008 = "50%";
				sampleVo1_3.Q4Dec2008 = "50%";
				sampleVo1_3.Q1Jan2009 = "50%";
				sampleVo1_3.Q1Feb2009 = "50%";
				sampleVo1_3.Q1Mar2009 = "50%";
				sampleVo1_3.Q2Apr2009 = "50%";
				sampleVo1_3.Q2May2009 = "50%";
				sampleVo1_3.Q2Jun2009 = "50%";
				sampleVo1_3.statusIcon = "statusIcon";
				sampleVo1_3.children = new ArrayCollection();
				
				var sampleVo1_3_1 : TreeGridData	= new TreeGridData();
				sampleVo1_3_1.id = 4;
				sampleVo1_3_1.name = null;
				sampleVo1_3_1.type = "Budget";
				sampleVo1_3_1.empName = "Parket Keshia";
				sampleVo1_3_1.Q1Jan2008 = "100%";
				sampleVo1_3_1.Q1Feb2008 = "100%";
				sampleVo1_3_1.Q1Mar2008 = "100%";
				sampleVo1_3_1.Q2Apr2008 = "100%";
				sampleVo1_3_1.Q2May2008 = "100%";
				sampleVo1_3_1.Q2Jun2008 = "100%";
				sampleVo1_3_1.Q3Jul2008 = "100%";
				sampleVo1_3_1.Q3Aug2008 = "100%";
				sampleVo1_3_1.Q3Sep2008 = "100%";
				sampleVo1_3_1.Q4Oct2008 = "100%";
				sampleVo1_3_1.Q4Nov2008 = "100%";
				sampleVo1_3_1.Q4Dec2008 = "100%";
				sampleVo1_3_1.Q1Jan2009 = "100%";
				sampleVo1_3_1.Q1Feb2009 = "100%";
				sampleVo1_3_1.Q1Mar2009 = "100%";
				sampleVo1_3_1.Q2Apr2009 = "100%";
				sampleVo1_3_1.Q2May2009 = "100%";
				sampleVo1_3_1.Q2Jun2009 = "100%";
				sampleVo1_3_1.statusIcon = "statusIcon";
				sampleVo1_3_1.children = null;
				sampleVo1_3.children.addItem(sampleVo1_3_1);
				
				var sampleVo1_4 : TreeGridData	= new TreeGridData();
				sampleVo1_4.id = 5;
				sampleVo1_4.name = "Project B";
				sampleVo1_4.type = "Budget";
				sampleVo1_4.empName = "Khait, Yevgney";
				sampleVo1_4.Q1Jan2008 = "50%";
				sampleVo1_4.Q1Feb2008 = "50%";
				sampleVo1_4.Q1Mar2008 = "50%";
				sampleVo1_4.Q2Apr2008 = "50%";
				sampleVo1_4.Q2May2008 = "50%";
				sampleVo1_4.Q2Jun2008 = "50%";
				sampleVo1_4.Q3Jul2008 = "50%";
				sampleVo1_4.Q3Aug2008 = "50%";
				sampleVo1_4.Q3Sep2008 = "50%";
				sampleVo1_4.Q4Oct2008 = "50%";
				sampleVo1_4.Q4Nov2008 = "50%";
				sampleVo1_4.Q4Dec2008 = "50%";
				sampleVo1_4.Q1Jan2009 = "50%";
				sampleVo1_4.Q1Feb2009 = "50%";
				sampleVo1_4.Q1Mar2009 = "50%";
				sampleVo1_4.Q2Apr2009 = "50%";
				sampleVo1_4.Q2May2009 = "50%";
				sampleVo1_4.Q2Jun2009 = "50%";
				sampleVo1_4.statusIcon = "statusIcon";
				sampleVo1_4.children = new ArrayCollection();
				
				var sampleVo1_4_1 : TreeGridData	= new TreeGridData();
				sampleVo1_4_1.id = 6;
				sampleVo1_4_1.name = null;
				sampleVo1_4_1.type = "Budget";
				sampleVo1_4_1.empName = "Phani Krishna";
				sampleVo1_4_1.Q1Jan2008 = "100%";
				sampleVo1_4_1.Q1Feb2008 = "100%";
				sampleVo1_4_1.Q1Mar2008 = "100%";
				sampleVo1_4_1.Q2Apr2008 = "100%";
				sampleVo1_4_1.Q2May2008 = "100%";
				sampleVo1_4_1.Q2Jun2008 = "100%";
				sampleVo1_4_1.Q3Jul2008 = "100%";
				sampleVo1_4_1.Q3Aug2008 = "100%";
				sampleVo1_4_1.Q3Sep2008 = "100%";
				sampleVo1_4_1.Q4Oct2008 = "100%";
				sampleVo1_4_1.Q4Nov2008 = "100%";
				sampleVo1_4_1.Q4Dec2008 = "100%";
				sampleVo1_4_1.Q1Jan2009 = "100%";
				sampleVo1_4_1.Q1Feb2009 = "100%";
				sampleVo1_4_1.Q1Mar2009 = "100%";
				sampleVo1_4_1.Q2Apr2009 = "100%";
				sampleVo1_4_1.Q2May2009 = "100%";
				sampleVo1_4_1.Q2Jun2009 = "100%";
				sampleVo1_4_1.statusIcon = "statusIcon";
				sampleVo1_4_1.children = null;
				sampleVo1_4.children.addItem(sampleVo1_4_1);
				
				var sampleVo1_4_2 : TreeGridData	= new TreeGridData();
				sampleVo1_4_2.id = 7;
				sampleVo1_4_2.name = null;
				sampleVo1_4_2.type = "Budget";
				sampleVo1_4_2.empName = "Praveen Dubey";
				sampleVo1_4_2.Q1Jan2008 = "100%";
				sampleVo1_4_2.Q1Feb2008 = "100%";
				sampleVo1_4_2.Q1Mar2008 = "100%";
				sampleVo1_4_2.Q2Apr2008 = "100%";
				sampleVo1_4_2.Q2May2008 = "100%";
				sampleVo1_4_2.Q2Jun2008 = "100%";
				sampleVo1_4_2.Q3Jul2008 = "100%";
				sampleVo1_4_2.Q3Aug2008 = "100%";
				sampleVo1_4_2.Q3Sep2008 = "100%";
				sampleVo1_4_2.Q4Oct2008 = "100%";
				sampleVo1_4_2.Q4Nov2008 = "100%";
				sampleVo1_4_2.Q4Dec2008 = "100%";
				sampleVo1_4_2.Q1Jan2009 = "100%";
				sampleVo1_4_2.Q1Feb2009 = "100%";
				sampleVo1_4_2.Q1Mar2009 = "100%";
				sampleVo1_4_2.Q2Apr2009 = "100%";
				sampleVo1_4_2.Q2May2009 = "100%";
				sampleVo1_4_2.Q2Jun2009 = "100%";
				sampleVo1_4_2.statusIcon = "statusIcon";
				sampleVo1_4_2.children = null;
				sampleVo1_4.children.addItem(sampleVo1_4_2);
				
				var sampleVo1_5 : TreeGridData	= new TreeGridData();
				sampleVo1_5.id = 8;
				sampleVo1_5.name = "Project C";
				sampleVo1_5.type = "Budget";
				sampleVo1_5.empName = "Aram Robert";
				sampleVo1_5.Q1Jan2008 = "50%";
				sampleVo1_5.Q1Feb2008 = "50%";
				sampleVo1_5.Q1Mar2008 = "50%";
				sampleVo1_5.Q2Apr2008 = "50%";
				sampleVo1_5.Q2May2008 = "50%";
				sampleVo1_5.Q2Jun2008 = "50%";
				sampleVo1_5.Q3Jul2008 = "50%";
				sampleVo1_5.Q3Aug2008 = "50%";
				sampleVo1_5.Q3Sep2008 = "50%";
				sampleVo1_5.Q4Oct2008 = "50%";
				sampleVo1_5.Q4Nov2008 = "50%";
				sampleVo1_5.Q4Dec2008 = "50%";
				sampleVo1_5.Q1Jan2009 = "50%";
				sampleVo1_5.Q1Feb2009 = "50%";
				sampleVo1_5.Q1Mar2009 = "50%";
				sampleVo1_5.Q2Apr2009 = "50%";
				sampleVo1_5.Q2May2009 = "50%";
				sampleVo1_5.Q2Jun2009 = "50%";
				sampleVo1_5.statusIcon = "statusIcon";
				sampleVo1_5.children = new ArrayCollection();
				
				var sampleVo1_5_1 : TreeGridData	= new TreeGridData();
				sampleVo1_5_1.id = 9;
				sampleVo1_5_1.name = null;
				sampleVo1_5_1.type = "Budget";
				sampleVo1_5_1.empName = "Parket Keshia";
				sampleVo1_5_1.Q1Jan2008 = "100%";
				sampleVo1_5_1.Q1Feb2008 = "100%";
				sampleVo1_5_1.Q1Mar2008 = "100%";
				sampleVo1_5_1.Q2Apr2008 = "100%";
				sampleVo1_5_1.Q2May2008 = "100%";
				sampleVo1_5_1.Q2Jun2008 = "100%";
				sampleVo1_5_1.Q3Jul2008 = "100%";
				sampleVo1_5_1.Q3Aug2008 = "100%";
				sampleVo1_5_1.Q3Sep2008 = "100%";
				sampleVo1_5_1.Q4Oct2008 = "100%";
				sampleVo1_5_1.Q4Nov2008 = "100%";
				sampleVo1_5_1.Q4Dec2008 = "100%";
				sampleVo1_5_1.Q1Jan2009 = "100%";
				sampleVo1_5_1.Q1Feb2009 = "100%";
				sampleVo1_5_1.Q1Mar2009 = "100%";
				sampleVo1_5_1.Q2Apr2009 = "100%";
				sampleVo1_5_1.Q2May2009 = "100%";
				sampleVo1_5_1.Q2Jun2009 = "100%";
				sampleVo1_5_1.statusIcon = "statusIcon";
				sampleVo1_5_1.children = null;
				sampleVo1_5.children.addItem(sampleVo1_5_1);
				
				var sampleVo1_6 : TreeGridData	= new TreeGridData();
				sampleVo1_6.id = 10;
				sampleVo1_6.name = "Project D";
				sampleVo1_6.type = "Budget";
				sampleVo1_6.empName = "Khait, Yevgney";
				sampleVo1_6.Q1Jan2008 = "50%";
				sampleVo1_6.Q1Feb2008 = "50%";
				sampleVo1_6.Q1Mar2008 = "50%";
				sampleVo1_6.Q2Apr2008 = "50%";
				sampleVo1_6.Q2May2008 = "50%";
				sampleVo1_6.Q2Jun2008 = "50%";
				sampleVo1_6.Q3Jul2008 = "50%";
				sampleVo1_6.Q3Aug2008 = "50%";
				sampleVo1_6.Q3Sep2008 = "50%";
				sampleVo1_6.Q4Oct2008 = "50%";
				sampleVo1_6.Q4Nov2008 = "50%";
				sampleVo1_6.Q4Dec2008 = "50%";
				sampleVo1_6.Q1Jan2009 = "50%";
				sampleVo1_6.Q1Feb2009 = "50%";
				sampleVo1_6.Q1Mar2009 = "50%";
				sampleVo1_6.Q2Apr2009 = "50%";
				sampleVo1_6.Q2May2009 = "50%";
				sampleVo1_6.Q2Jun2009 = "50%";
				sampleVo1_6.statusIcon = "statusIcon";
				sampleVo1_6.children = new ArrayCollection();
				
				var sampleVo1_6_1 : TreeGridData	= new TreeGridData();
				sampleVo1_6_1.id = 11;
				sampleVo1_6_1.name = null;
				sampleVo1_6_1.type = "Budget";
				sampleVo1_6_1.empName = "Phani Krishna";
				sampleVo1_6_1.Q1Jan2008 = "100%";
				sampleVo1_6_1.Q1Feb2008 = "100%";
				sampleVo1_6_1.Q1Mar2008 = "100%";
				sampleVo1_6_1.Q2Apr2008 = "100%";
				sampleVo1_6_1.Q2May2008 = "100%";
				sampleVo1_6_1.Q2Jun2008 = "100%";
				sampleVo1_6_1.Q3Jul2008 = "100%";
				sampleVo1_6_1.Q3Aug2008 = "100%";
				sampleVo1_6_1.Q3Sep2008 = "100%";
				sampleVo1_6_1.Q4Oct2008 = "100%";
				sampleVo1_6_1.Q4Nov2008 = "100%";
				sampleVo1_6_1.Q4Dec2008 = "100%";
				sampleVo1_6_1.Q1Jan2009 = "100%";
				sampleVo1_6_1.Q1Feb2009 = "100%";
				sampleVo1_6_1.Q1Mar2009 = "100%";
				sampleVo1_6_1.Q2Apr2009 = "100%";
				sampleVo1_6_1.Q2May2009 = "100%";
				sampleVo1_6_1.Q2Jun2009 = "100%";
				sampleVo1_6_1.statusIcon = "statusIcon";
				sampleVo1_6_1.children = null;
				sampleVo1_6.children.addItem(sampleVo1_6_1);
				
				sampleVo1.children.addItem(sampleVo1_3);
				sampleVo1.children.addItem(sampleVo1_4);
				sampleVo1.children.addItem(sampleVo1_5);
				sampleVo1.children.addItem(sampleVo1_6);
				
				dataProviderObject = sampleVo1;
				
				dataCollection.addItemAt(sampleVo1,0);
				return dataCollection;
		}
	}
}