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
	 * This class is derived from the People class.
	 **/
	public class PeopleFact extends People
	{
		private var _empID:String;//Variable For Employee Id
   		private var _empType:String;//Variable For Employee Type.
  	    private var _PAndL:String;//Variable For P & L.
   		private var _BU:String;//Variable For BU.
   		private var _IT:Boolean;//Variable For IT.
   		
   		/**
		* @return the Employee Id .
		*/
   		public function get empID ():String
		{
			return this._empID;
		}
		/**
		* @param value The _empID to set.
		*/
		public function set empID (value:String):void
   		{
   			this._empID = value;
   		}
		
		/**
		* @return the Employee Type .
		*/		
		public function get empType ():String
		{
			return this._empType;
		}
		/**
		 * @param value the _empType to set.
		 */
		public function set empType  (value:String):void
   		{
   			this._empType = empType ;
   		}
   		
   		/**
		* @return the PAndL .
		*/	
   		public function get PAndL ():String
		{
			return this._PAndL;
		}
		
		/**
		* @param value the PAndL to set.
		*/
		public function set PAndL (value:String):void
   		{
   			this._PAndL = value ;
   		}   		
   		
   		/**
		* @return the BU  .
		*/
   		public function get BU ():String
		{
			return this._BU;
		}
		
		/**
		* @param value the BU to set.
		*/
		public function set BU (value:String):void
   		{
   			this._BU = value ;
   		}
   		
   		/**
		* @return the IT  .
		*/
   		public function get IT ():Boolean
		{
			return this._IT;
		}
		
		/**
		* @param value the BU to set.
		*/
		public function set IT (value:Boolean):void
   		{
   			this._IT = value ;
   		}
	}
}