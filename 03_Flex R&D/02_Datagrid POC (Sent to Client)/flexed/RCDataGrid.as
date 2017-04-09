package flexed
{
    import mx.controls.DataGrid;
    import flash.display.Shape;
    import mx.core.FlexShape;
    import flash.display.Graphics;
    import flash.display.Sprite;
    import mx.rpc.events.AbstractEvent;
    import mx.collections.ArrayCollection;
    import flash.events.Event;

    /**
     * This is an extended version of the built-in Flex datagrid. 
     * This extended version has the correct override logic in it
     * to draw the background color of the cells, based on the value of the
     * data in the row.
     **/
    public class RCDataGrid extends DataGrid
    {
        private var _rowColorFunction:Function;
        
        public function RCDataGrid()
        {
            super();
        }
        
        
        /**
         * A user-defined function that will return the correct color of the
         * row. Usually based on the row data.
         * 
         * expected function signature:
         * public function F(item:Object, defaultColor:uint):uint
         **/
        public function set rowColorFunction(f:Function):void
        {
            this._rowColorFunction = f;
        }
        
        public function get rowColorFunction():Function
        {
            return this._rowColorFunction;
        }
        
        
        
        private var displayWidth:Number;
        override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
        {
            super.updateDisplayList(unscaledWidth, unscaledHeight);            
            if (displayWidth != unscaledWidth - viewMetrics.right - viewMetrics.left)
            {
                displayWidth = unscaledWidth - viewMetrics.right - viewMetrics.left;
            }
        }
        

        /**
         *  Draws a row background 
         *  at the position and height specified using the
         *  color specified.  This implementation creates a Shape as a
         *  child of the input Sprite and fills it with the appropriate color.
         *  This method also uses the <code>backgroundAlpha</code> style property 
         *  setting to determine the transparency of the background color.
         * 
         *  @param s A Sprite that will contain a display object
         *  that contains the graphics for that row.
         *
         *  @param rowIndex The row&apos;s index in the set of displayed rows.  The
         *  header does not count, the top most visible row has a row index of 0.
         *  This is used to keep track of the objects used for drawing
         *  backgrounds so a particular row can re-use the same display object
         *  even though the index of the item that row is rendering has changed.
         *
         *  @param y The suggested y position for the background
         * 
         *  @param height The suggested height for the indicator
         * 
         *  @param color The suggested color for the indicator
         * 
         *  @param dataIndex The index of the item for that row in the
         *  data provider.  This can be used to color the 10th item differently
         *  for example.
         */
        override protected function drawRowBackground(s:Sprite, rowIndex:int,
                                                y:Number, height:Number, color:uint, dataIndex:int):void
        {
            if( this.rowColorFunction != null && this.dataProvider != null)
            {
                if( dataIndex < (this.dataProvider as ArrayCollection).length )
                {
                    var item:Object = (this.dataProvider as ArrayCollection).getItemAt(dataIndex);
                    color = this.rowColorFunction.call(this, item, color);
                }
            }
            
            super.drawRowBackground(s, rowIndex, y, height, color, dataIndex);
        }

    }
}
