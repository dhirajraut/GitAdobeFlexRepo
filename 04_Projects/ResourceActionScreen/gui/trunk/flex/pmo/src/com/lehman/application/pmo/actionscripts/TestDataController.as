package gui.trunk.flex.pmo.src.com.lehman.application.pmo.actionscripts
{
	import com.lehman.framework.foundation.dataservices.LClientDataToken;
	import com.lehman.framework.foundation.dataservices.LIDataClient;
	import com.lehman.framework.foundation.dataservices.LDataServiceFactory;
	import com.lehman.framework.foundation.dataservices.LIDataService;
	import com.lehman.framework.foundation.dataservices.LHttpDataServiceRequest;
	import mx.controls.Alert;
	import flash.events.EventDispatcher;
	import com.lehman.framework.foundation.events.LActionEvent;

	public class TestDataController extends EventDispatcher implements LIDataClient 
	{
		
		private var httpDataService :LIDataService;
		/*** We have only one instance for DataController ***/
		private static var testDataController :TestDataController;
		
		public function TestDataController() 
		{
			if( testDataController != null ) 
				throw new Error( ">>> Please use TestDataController.getInstance() <<<" );	
		}
		/**
		 *  @return an instance of ADBDataController.
		 */
		public static function getInstance() : TestDataController
		{
			if( testDataController == null )
			{
				testDataController = new TestDataController();
			}
			return testDataController;
		}
		
		/**
		 * Get Help XML from local xml.  
		 */
		public function getHelpXml() :void
		{
			var dataRequest :LHttpDataServiceRequest = new LHttpDataServiceRequest();
			dataRequest.resultFormat = "e4x";
			dataRequest.url = "xml/helpxml.xml";
			dataRequest.method = "GET";
			
			var clientToken :LClientDataToken = new LClientDataToken();
			clientToken.id = "helpxml";
			this.getHttpDataService().sendRequest( dataRequest, clientToken );
		}
		
		private function getHttpDataService() :LIDataService
		{
			if( httpDataService == null ) 
			{
				this.httpDataService = LDataServiceFactory.getDataService(
					LDataServiceFactory.HTTP_SERVICE, this );
			}	
			return this.httpDataService;
		}
		
		public function failure(pMessage:String, pClientDataToken:LClientDataToken):void
		{
			Alert.show( "Failed to get data" + pMessage, "error" );
		}
		
		public function success(pResult:Object, pClientDataToken:LClientDataToken):void
		{
			var actionEvent :LActionEvent = new LActionEvent( "testXml", pResult )
			this.dispatchEvent( actionEvent );
		}
		
	}
}