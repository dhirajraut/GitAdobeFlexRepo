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
	/**
	* This class is derived from the Project class.
	* ProjectFact class describe the Information about the project.
	**/
	public class ProjectFact extends Project
	{	
		private var _financialCut:String;//Variable For Financial Cut.
   		private var _status:String;//Varible For Project Status.
   		private var _scheduled:String;//Variable For Project Schedule.
   		private var _startDate:Date;//Variable For Project Start Date.   		
   		
   		/**
		* @return the Financial Cut.
		*/
   		public function get financialCut ():String
		{
			return this._financialCut;
		}
		/**
		 * @param value The _financialCut to set.
		 */
		public function set financialCut (value:String):void
   		{
   			this._financialCut = value;
   		}
		
		/**
		* @return the Project Status.
		*/
		public function get Status ():String
		{
			return this._status;
		}
		
		/**
		* @param value The _status to set.
		*/
		public function set Status  (value:String):void
   		{
   			this._status = value ;
   		}
   		
   		/**
		* @return the Project Schedule.
		*/
   		public function get Scheduled ():String
		{
			return this._scheduled;
		}
		/**
		* @param value The _scheduled to set.
		*/
		public function set Scheduled (value:String):void
   		{
   			this._scheduled = value ;
   		}
   		
   		/**
		* @return the Project Start Date.
		*/
   		public function get startDate ():String
		{
			return this._startDate;
		}
		/**
		* @param value The _startDate to set.
		*/
		public function set startDate (value:String):void
   		{
   			this._startDate = value ;
   		}   		
	}
}