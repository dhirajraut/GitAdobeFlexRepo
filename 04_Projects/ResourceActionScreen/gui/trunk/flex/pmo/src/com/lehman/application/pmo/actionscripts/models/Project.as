/**
 * Authors : L&TInfotech 
 * Division: CAD and Corporate Technology
 * Company : Lehman Brothers - Jersey City
 * Project : PMPortal Components
 * Class   :It defines the Asset class.
 * Date    : 19/03/2008
 */
package com.lehman.application.pmo.actionscripts.models
{
	/**
	 * This class is derived from the Asset class.
	 * Project class describe the Project details e.g Project ID , Project Name 
	 **/
	public class Project extends Asset
	{
		private var _projectID:String; //Variable For Project Id
   		private var _projectName:String; //Variable For Project Name.
   		
   		/**
		* @return Returns the Project Id .
		*/
   		public function get projectID ():String
		{
			return this._projectID;
		}
		
		/**
		* @param value The _projectID to set.
		*/
		public function set projectID (value:String):void
   		{
   			this._projectID = value;
   		}
   		
   		/**
		* @return Returns the Project Name .
		*/
   		public function get projectName ():String
		{
			return this._projectName;
		}
		
		/**
		* @param value The _projectName to set.
		*/
		public function set projectName (value:String):void
   		{
   			this._projectName = value;
   		}
	}
}