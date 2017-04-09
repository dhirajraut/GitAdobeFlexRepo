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
	 * PeopleDetail class describe the employee details e.g id , name and their Alloted Allocation and Acutal Allocation
	 **/
	public class PeopleDetail
	{
		private var _empID:String;//Variable For Employee Id
   		private var _empName:String;//Variable For Employee Name.
   		private var _allocation:String;//Variable For Alloted Allocation
   		private var _actuals:String;//Variable For Actual Allocation
		
		/** Gets the employee Id
		 *
		 *@return the Id of the employee
		 */  
		public function get empID ():String
		{
			return this._empID;
		}
		
				
		/** Sets the  employee Id
		 *
		 *@param empID  a string giving the Id of the employee
		 */
	
		public function set empID (value:String):void
   		{
   			this._empID = value;
   		}
   		
   		/** Gets the employee name
		 *
		 *@return the name of the employee
		 */   
   		public function get empName ():String
		{
			return this._empName;
		}
		
		
		/** Sets the  employee name
		 *
		 *@param empName a string giving the name of the employee
		 */
		public function set empName (value:String):void
   		{
   			this._empName = value;
   		}
   		
   		
   		/** Gets the employee allocation
		 *
		 *@return the allocation for the employee
		 */  
   		public function get allocation ():String
		{
			return this._allocation;
		}
		
		
		/** Sets the  employee allocation
		 *
		 *@param allocation a string giving the allocation for the employee
		 */
		public function set allocation (value:String):void
   		{
   			this._allocation = value;
   		}
   		
   		
   		/** Gets the employee actuals
		 *
		 *@return the actual allocation  for the employee
		 */ 
   		public function get actuals ():String
		{
			return this._actuals;
		}
		
		
		/** Sets the  employee actuals
		 *
		 *@param actuals a string giving the actual allocation for the employee
		 */

		public function set actuals (value:String):void
   		{
   			this._actuals = value;
   		}
	}
}
