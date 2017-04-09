/**
 * Authors : L&TInfotech 
 * Division: CAD and Corporate Technology
 * Company : Lehman Brothers - Jersey City
 * Project : PMPortal Components
 * Class   :It defines the Asset class.
 * Date    : 19/03/2008
 */
package gui.trunk.flex.pmo.src.com.lehman.application.pmo.actionscripts.models
{
	import mx.collections.ArrayCollection;
	/**
	 * ResourceAnnualData class describe the Annual Resource Information.
	 **/
	public class ResourceAnnualData
	{
		private var _empID:String;//Variable For Employee ID
   		private var _empName:String;//Variable For Employee Name
   		private var _yearData:ArrayCollection;//Variable For collection of YearData.
		
		/**
		* @return the Employee Id .
		*/
   	  	public function get EmployeeID ():String
		{
			return this._empID;
		}
		
		/**
		 * @param value The _empID to set.
		 */
		public function set EmployeeID (value:String):void
   		{
   			this._empID = value;
   		}
		
		/**
		* @return the Employee Name .
		*/
		public function get EmployeeName ():String
		{
			return this._empName;
		}
		/**
		 * @param value the _empName to set.
		 */
		public function set EmployeeName (value:String):void
   		{
   			this._empName = value;
   		}
		
		/**
		* @return the Collection of YearData Class's Object .
		*/
		public function get YearData():ArrayCollection
		{
			return this._yearData;
		}
		/**
		 * @param value the _yearData to set.
		 */
		public function set YearData(value:ArrayCollection):void
   		{
   			this._yearData = value;
   		}
	}
}