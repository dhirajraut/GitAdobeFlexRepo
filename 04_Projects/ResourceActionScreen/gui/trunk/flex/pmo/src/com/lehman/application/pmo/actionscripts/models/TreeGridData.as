/**
 * Authors : L&TInfotech 
 * Division: CAD and Corporate Technology
 * Company : Lehman Brothers - Jersey City
 * Project : PMPortal Components
 * Class   :It defines the TreeGridData class.
 * Date    : 19/03/2008
 */
 
package com.lehman.application.pmo.actionscripts.models
{
	import mx.collections.ArrayCollection;
	
	/**
	 * TreeGridData class is dataformat for treegrid data.
	 * object of this class should be used for treegrid dataprovider. 
	 **/	
	[Bindable]
	public dynamic class TreeGridData
	{
		public var id : Number;//variable for unique id of record.
		public var name : String;//variable to store name 
		public var children : ArrayCollection;//varibale to store children of any particular record.	
	} // end class
} // end package