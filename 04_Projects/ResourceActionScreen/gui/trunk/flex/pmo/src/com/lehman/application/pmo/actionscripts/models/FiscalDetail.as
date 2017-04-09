/**
 * Authors : L&TInfotech 
 * Division: CAD and Corporate Technology
 * Company : Lehman Brothers - Jersey City
 * Project : PMPortal Components
 * Class   :It defines the Person , Project details
 * Date    : 19/03/2008
 */
package gui.trunk.flex.pmo.src.com.lehman.application.pmo.actionscripts.models
{
	import mx.collections.ArrayCollection;
	/**
	* This class is derived from Project Class.
	* This class contain collection of Objects of ResourceAnnualData class.	
	**/
	public class FiscalDetail extends Project
	{
		
		private var _resourceAnnualData:ArrayCollection;//Variable for Collection of ResourceAnnualData Class's objects.
   		
   		/** Gets the ResourceAnnualData
		 *
		 *@return the _resourceAnnualData.
		 */    		
   		public function get ResourceAnnualData():ArrayCollection
		{
			return this._resourceAnnualData;
		}
		
		/** Sets the ResourceAnnualData
		*
		*@param value is a arraycollection of ResourceAnnualData Class's objects.
		*/
		public function set ResourceAnnualData(value:ArrayCollection):void
   		{
   			this._resourceAnnualData = value;
   		}   		
	}
}