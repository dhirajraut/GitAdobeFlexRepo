/**
 * Authors : L&TInfotech 
 * Division: CAD and Corporate Technology
 * Company : Lehman Brothers - Jersey City
 * Project : PMPortal
 * Class   :It defines the Person , Project details
 * Date    : 19/03/2008
 */
package com.lehman.application.pmo.actionscripts.models
{
	import mx.collections.ArrayCollection;
	import com.lehman.application.pmo.actionscripts.models.Project;
	/**
	 * This class is derived from Project Class.
	 * This class contain collection of Objects of PeopleDetails class.
	 **/
	public class AssociatedPeopleDetail extends Project
	{
   		private var _PeopleDetails:ArrayCollection;//Variable for Collection of PeopleDetails Class's objects.
   		private var _Fact:ArrayCollection;//Variable for Collection of Fact Details.
		
		/** Gets the PeopleDetails
		 *
		 *@return the _PeopleDetails.
		 */ 
		public function get PeopleDetails ():ArrayCollection
		{
			return this._PeopleDetails;
		}
		
		/** Sets the PeopleDetails
		 *
		 *@param value is a arraycollection of PeopleDetails Class's objects.
		 */
		public function set PeopleDetails (value:ArrayCollection):void
   		{
   			this._PeopleDetails = value;
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