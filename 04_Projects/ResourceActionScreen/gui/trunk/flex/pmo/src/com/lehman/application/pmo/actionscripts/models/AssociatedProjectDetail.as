/**
 * Authors : L&TInfotech 
 * Division: CAD and Corporate Technology
 * Company : Lehman Brothers - Jersey City
 * Project : PMPortal Components
 * Class   :It defines the Collection of Project details
 * Date    : 19/03/2008
 */ 
package com.lehman.application.pmo.actionscripts.models
{
	import mx.collections.ArrayCollection;
	/**
	 * This class is derived from People Class.
	 * This class describe the get and set for ProjectDetails Class collection
	 **/
	public class AssociatedProjectDetail extends People
	{
		private var _projectDetail:ArrayCollection; //Variable to store ProjectDeail class's object.
   		private var _Fact:ArrayCollection;//Variable for Collection of Fact Details.
   		
   		/** Gets the ProjectDetail
		*
		*@return the _projectDetail.
		*/ 
   		 			    	 	
		public function get ProjectDetails ():ArrayCollection
		{
			return this._projectDetail;
		}
		
		/** Sets the ProjectDetails
		 *
		 *@param value is a arraycollection of ProjectDetails Class's objects.
		 */  
		public function set ProjectDetails (value:ArrayCollection):void
   		{
   			this._projectDetail = value;
   		}
   		
   		/** Gets the Fact
		 *
		 *@return the _Fact.
		 */ 
		public function get Fact():ArrayCollection
		{
			return this._Fact;
		}
		
		/** Sets the Fact
		 *
		 *@param value is a arraycollection of Fact Class's objects.
		 */
		public function set Fact(value:ArrayCollection):void
   		{
   			this._Fact = value;
   		}		 
	}
}