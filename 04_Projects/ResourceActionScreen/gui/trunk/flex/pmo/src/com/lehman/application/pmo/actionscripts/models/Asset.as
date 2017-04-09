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
	 * Asset Class
	 * Asset class describe the assets such as Employee, Hardware etc.
	 */
	public class Asset
	{
		private var _ID:String //Variable For Asset Id
   		private var _Name:String //Variable For Asset Name

   		/**
		 * @return Returns the Asset Id .
		 */
   		public function get ID ():String
		{
			return this._ID;
		}
		
		/**
		 * @param value The _ID to set.
		 */
		public function set ID (value:String):void
   		{
   			this._ID = value;
   		} 
   		
   		/**
		 * @return Returns the Asset Name .
		 */
   		public function get Name ():String
		{
			return this._Name;
		}
		
		/**
		 * @param value The _Name to set.
		 */
		public function set Name (value:String):void
   		{
   			this._Name = value;
   		}
	}
}