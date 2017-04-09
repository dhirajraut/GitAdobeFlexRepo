/**
 * Authors : L&TInfotech 
 * Division: CAD and Corporate Technology
 * Company : Lehman Brothers - Jersey City
 * Project : PMPortal Components
 * Class   :It is utility for custom tooltip.
 * Date    : 19/03/2008
 */
package com.lehman.application.pmo.actionscripts.utils
{
    import mx.core.UITextField;
    import mx.skins.halo.ToolTipBorder;
    import mx.controls.ToolTip;
	/**
	 * This class extends ToolTipBorder.
	 * It customise the default tooltip.
	 */
    public class MyToolTip extends ToolTipBorder
    { 
    	/**
    	 * Overriding Base class function to customising border of tooltip.
    	 */  
        override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
        {           
            var toolTip:ToolTip = (this.parent as ToolTip);
            var textField:UITextField = toolTip.getChildAt(1) as UITextField;
            textField.htmlText = textField.text;
            
            var calHeight:Number = textField.height;
            calHeight += textField.y*2;
            calHeight += textField.getStyle("paddingTop");
            calHeight += textField.getStyle("paddingBottom");
            
            var calWidth:Number = textField.textWidth;
            calWidth += textField.x*2;
            calWidth += textField.getStyle("paddingLeft");
            calWidth += textField.getStyle("paddingRight");
            
            super.updateDisplayList(calWidth, calHeight);            
        }        
    }
}
