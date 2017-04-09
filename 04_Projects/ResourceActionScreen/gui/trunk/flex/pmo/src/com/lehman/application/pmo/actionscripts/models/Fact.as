/**
 * Authors : L&TInfotech 
 * Division: CAD and Corporate Technology
 * Company : Lehman Brothers - Jersey City
 * Project : PMPortal
 * Class   :It defines the Asset class.
 * Date    : 19/03/2008
 */
 
package com.lehman.application.pmo.actionscripts.models
{
	/**
	 * This class is set name value pair.
	 **/
	public class Fact
	{
		private var _Name:String;//Variable to Store Name.
		private var _Value:String;//Variable to Store Value.
		/**
		* @return the Name.
		*/
   		public function get Name():String
		{
			return this._Name;
		}
		/**
		* @param value The _Name to set.
		*/
		public function set Name(value:String):void
   		{
   			this._Name = value;
   		}
   		
   		/**
		* @return the Value.
		*/
   		public function get Value():String
		{
			return this._Value;
		}
		/**
		* @param value The _Name to set.
		*/
		public function set Value(value:String):void
   		{
   			this._Value = value;
   		}
	}
}