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
	 * This class is derived from the Asset class.
	 * People class describe the employee details e.g id , name and their Image path.
	 **/
	public class People extends Asset
	{ 
		 private var _empID:String; //Variable For Employee Id
   		 private var _empName:String;//Variable For Employee Name.
   		 private var _imageSource:String  //Variable For Image source
   	        	     
		 /**
		 * @return Returns the Employee Id .
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
		 * @return the Employee Name .
		 */
		 public function get empName ():String
		 {
			return this._empName;
		 }
		 
		 /**
		 * @param value the _empName to set.
		 */
		 public function set empName (value:String):void
   		 {
   			this._empName = value;
   		 }
   		 
   		  /**
		 * @return the Image Source.
		 */ 
   		 public function get imageSource ():String
		 {
			return this._imageSource;
		 }
		 
		 /**
		 * @param value the _imageSource to set.
		 */
		 public function set imageSource (value:String):void
   		 {
   			this._imageSource = value;
   		 }
	}
}