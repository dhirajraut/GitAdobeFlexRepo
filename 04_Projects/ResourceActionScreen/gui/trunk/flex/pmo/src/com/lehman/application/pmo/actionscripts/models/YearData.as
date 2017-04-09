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
	* YearData class describe the Quarter Wise Monthely Allocation Data.
	**/
	public class YearData
	{
	   private var _yearYYYY:String; //Attribute For Year of Allocation
	   private var _q1TotalAllocation:String; //Attribute For First Quarter Allocation
	   private var _q2TotalAllocation:String; //Attribute For Second Quarter Allocation
	   private var _q3TotalAllocation:String; //Attribute For Third Quarter Allocation
	   private var _q4TotalAllocation:String; //Attribute For Fourth Quarter Allocation
	   private var _janAllocation:String; //Attribute For Januarary Month Allocation
	   private var _febAllocation:String; //Attribute For Feburary Month Allocation
	   private var _marAllocation:String; //Attribute For March Month Allocation
	   private var _aprAllocation:String; //Attribute For April Month Allocation
	   private var _mayAllocation:String; //Attribute For May Month Allocation
	   private var _junAllocation:String; //Attribute For June Month Allocation
	   private var _julAllocation:String; //Attribute For July Month Allocation
	   private var _augAllocation:String; //Attribute For August Month Allocation
	   private var _sepAllocation:String; //Attribute For September Month Allocation
	   private var _octAllocation:String; //Attribute For October Month Allocation
	   private var _novAllocation:String; //Attribute For November Month Allocation
	   private var _decAllocation:String; //Attribute For December Month Allocation
	   
		/**
		* @return the Year.
		*/
		public function get yearYYYY  ():String
		{
		return this._yearYYYY ;
		}
		/**
		 * @param value The _yearYYYY to set.
		 */
		public function set yearYYYY  (yearYYYY :String):void
		{
			this._yearYYYY  = yearYYYY ;
		}
		   
		/**
		* @return Returns the _q1TotalAllocation.
		*/
		public function get q1TotalAllocation ():String
		{
		return this._q1TotalAllocation;
		}
		
		/**
		 * @param value The _q1TotalAllocation to set.
		 */
		public function set q1TotalAllocation(value:String):void
		{
			this._q1TotalAllocation = value;
		}
		
		/**
		 * @return Returns the _q2TotalAllocation .
		 */
		public function get q2TotalAllocation  ():String
		{
			return this._q2TotalAllocation ;
		}
		
		/**
		 * @param value The _q2TotalAllocation  to set.
		 */
		public function set q2TotalAllocation (value:String):void
		{
			this._q2TotalAllocation  = value;
		}
		
		/**
		 * @return Returns the _q3TotalAllocation .
		 */
		public function get q3TotalAllocation  ():String
		{
			return this._q3TotalAllocation ;
		}
		
		/**
		 * @param value The _q3TotalAllocation  to set.
		 */
		public function set q3TotalAllocation (value:String):void
		{
			this._q3TotalAllocation  = value;
		}
		
		/**
		 * @return Returns the _q4TotalAllocation .
		 */
		public function get q4TotalAllocation  ():String
		{
			return this._q4TotalAllocation ;
		}
		
		/**
		 * @param value The _q4TotalAllocation  to set.
		 */
		public function set q4TotalAllocation (value:String):void
		{
			this._q4TotalAllocation  = value;
		}
		
		/**
		 * @return Returns the _janAllocation .
		 */
		public function get janAllocation  ():String
		{
			return this._janAllocation ;
		}
		
		/**
		 * @param value The _janAllocation  to set.
		 */
		public function set janAllocation (value:String):void
		{
			this._janAllocation  = value;
		}
		
		/**
		 * @return Returns the _febAllocation .
		 */
		public function get febAllocation ():String
		{
			return this._febAllocation;
		}
		
		/**
		 * @param value The _febAllocation to set.
		 */
		public function set febAllocation(value:String):void
		{
			this._febAllocation = value;
		}
		
		/**
		 * @return Returns the _marAllocation.
		 */
		public function get marAllocation ():String
		{
			return this._marAllocation;
		}
		
		/**
		 * @param value The _q1TotalAllocation to set.
		 */
		public function set marAllocation(value:String):void
		{
			this._marAllocation = value;
		}
		
		/**
		 * @return Returns the _aprAllocation.
		 */
		public function get aprAllocation ():String
		{
			return this._aprAllocation;
		}
		
		/**
		 * @param value The _aprAllocation to set.
		 */
		public function set aprAllocation(value:String):void
		{
			this._aprAllocation = value;
		}
		
		/**
		 * @return Returns the _mayAllocation.
		 */
		public function get mayAllocation ():String
		{
			return this._mayAllocation;
		}
		
		/**
		 * @param value The _mayAllocation to set.
		 */
		public function set mayAllocation(value:String):void
		{
		this._mayAllocation = value;
		}
		
		/**
		 * @return Returns the _junAllocation.
		 */
		public function get junAllocation ():String
		{
			return this._junlAllocation;
		}
		
		/**
		 * @param value The _junAllocation to set.
		 */
		public function set junAllocation(value:String):void
		{
			this._junAllocation = value;
		}
		
		/**
		 * @return Returns the _julAllocation.
		 */
		public function get julAllocation ():String
		{
			return this._julAllocation;
		}
		
		/**
		 * @param value The _julAllocation to set.
		 */
		public function set julAllocation(value:String):void
		{
			this._julAllocation = value;
		}
		
		/**
		 * @return Returns the _augAllocation.
		 */
		public function get augAllocation ():String
		{
			return this._augAllocation;
		}
		
		/**
		 * @param value The _augAllocation to set.
		 */
		public function set augAllocation(value:String):void
		{
			this._augAllocation = value;
		}
		
		/**
		 * @return Returns the _sepAllocation.
		 */
		public function get sepAllocation ():String
		{
			return this._sepAllocation;
		}
		
		/**
		 * @param value The _sepAllocation to set.
		 */
		public function set sepAllocation(value:String):void
		{
			this._sepAllocation = value;
		}
		
		/**
		 * @return Returns the _octAllocation.
		 */
		public function get octAllocation ():String
		{
			return this._octAllocation;
		}
		
		/**
		 * @param value The _octAllocation to set.
		 */
		public function set octAllocation(value:String):void
		{
			this._octAllocation = value;
		}
		
		/**
		 * @return Returns the _novAllocation.
		 */
		public function get novAllocation ():String
		{
			return this._novAllocation;
		}
		
		/**
		 * @param value The _novAllocation to set.
		 */
		public function set novAllocation(value:String):void
		{
			this._novAllocation = value;
		}
		
		/**
		 * @return Returns the _decAllocation.
		 */
		public function get decAllocation ():String
		{
			return this._decAllocation;
		}
		
		/**
		 * @param value The _decAllocation to set.
		 */
		public function set decAllocation(value:String):void
		{
			this._decAllocation = value;
		}
	}
}