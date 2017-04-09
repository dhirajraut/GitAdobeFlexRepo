package flexed
{
    import flash.net.SharedObject;
    import mx.collections.ArrayCollection;
    import mx.events.IndexChangedEvent;
    
    public class Preferences
    {
        private var _soMatisse:SharedObject = getSO();
        
        private static var _instance:Preferences = new Preferences();
                
        public function get soMatisse():SharedObject{
            return _soMatisse;
        }
        
        public static function get getInstance():Preferences{
            return _instance;
        }

        private function getSO():SharedObject{
            var so:SharedObject = SharedObject.getLocal("flexed");
            return so;
        }
        
        public function setGridPreference(gridName:String, saveChoice:Object = null):void{
            var choice:Object = new Object();
            if(saveChoice != null){
                if(soMatisse.data.hasOwnProperty("columnChoice")){
                    soMatisse.data.columnChoice[gridName] = saveChoice;
                }else{
                    choice[gridName] = saveChoice;
                    soMatisse.data.columnChoice = choice;
                }

                soMatisse.flush();
            }
        }

        public function getGridPreference(gridId:String):Array{
            if(soMatisse.data.columnChoice != null)
                return soMatisse.data.columnChoice[gridId];
            else
                return null;
        }
        
        public function clearPreferences():void{
            delete soMatisse.data.columnChoice;
            soMatisse.flush();
        }
        
    }
}
