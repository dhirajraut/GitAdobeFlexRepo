/**
 * Authors : L&TInfotech 
 * Division: CAD and Corporate Technology
 * Company : Lehman Brothers - Jersey City
 * Project : PMPortal Components
 * Class   :It defines the Person , Project details
 * Date    : 19/03/2008
 */ 
package com.lehman.application.pmo.actionscripts.models
{
	/**
	 * ProjectDetail class describe the Project details e.g id , name and their Alloted Allocation and Acutal Allocation
	 **/
	public class ProjectDetail
	{
		private var _projectID:String;//Variable For Project Id.
   		private var _projectName:String;//Variable For Project Name.
   		private var _allocation:String;//Variable For Project Alloted.
   		private var _actuals:String;//Variable For Actual Project.

		
		/** Gets the project Id
		 *
		 *@return the Id for the project
		 */   	
		public function get projectID ():String
		{
			return _projectID;
			
		}
		
		/** Sets the  project Id
		 *
		 *@param projectID a string giving the Id for the project
		 */

		public function set projectID (projectID:String):void
		{
			_projectID = projectID;
			
		}
		
		
		/** Gets the project name
		 *
		 *@return the name of the project
		 */   	
		public function get projectName ():String
		{
			return _projectName;
			
		}
		
		/** Sets the  project name
		 *
		 *@param projectName a string giving the name of the project
		 */

		public function set projectName (projectName:String):void
		{
			_projectName = projectName;
			
		}
		
		
		/** Gets the project allocation
		 *
		 *@return the allocation for the project
		 */   	
		public function get allocation ():String
		{
			return _allocation;
			
		}
		
		/** Sets the  project allocation
		 *
		 *@param allocation a string giving the allocation for the project
		 */

		public function set allocation (allocation:String):void
		{
			_allocation = allocation;
			
		}
		
		
		/** Gets the project actuals
		 *
		 *@return the actual allocation  for the project
		 */   	
		public function get actuals ():String
		{
			return _actuals;
			
		}
		
		/** Sets the  project actuals
		 *
		 *@param actuals a string giving the actual allocation for the project
		 */

		public function set actuals (actuals:String):void
		{
			_actuals = actuals;
			
		}
	}
}