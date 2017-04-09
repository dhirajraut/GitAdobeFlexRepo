package {
import mx.managers.SystemManager;
import flash.utils.*;
import flash.system.ApplicationDomain;
import mx.core.IFlexModuleFactory;
import mx.core.IFlexModule;
public class _Flex1_mx_managers_SystemManager extends mx.managers.SystemManager implements IFlexModuleFactory {
  public function _Flex1_mx_managers_SystemManager() {
      super();
}
override public function create(... params):Object
{
  if ((params.length == 0) || (params[0] is String))
  {
    var mainClassName:String = null;
    if (params.length == 0) mainClassName = 'Flex1';
    else mainClassName = String(params[0]);
    var clazz:Class = Class(getDefinitionByName(mainClassName));
    if (clazz != null)
    {
      var inst:Object = new clazz();
      if (inst is IFlexModule)
      {
         (IFlexModule(inst)).moduleFactory = this;
      }
      return inst;
    }
    else return null;
  }
  else return super.create.apply(this, params);
}
  override public function info():Object { return {
"currentDomain": ApplicationDomain.currentDomain,
"backgroundGradientColors" : "[#0080ff, #ff8080]",
"layout" : "absolute",
"mainClassName" : "Flex1",
"mixins" : ["_Flex1_FlexInit", "_alertButtonStyleStyle", "_ControlBarStyle", "_ScrollBarStyle", "_activeTabStyleStyle", "_textAreaHScrollBarStyleStyle", "_ToolTipStyle", "_comboDropDownStyle", "_ContainerStyle", "_textAreaVScrollBarStyleStyle", "_globalStyle", "_windowStatusStyle", "_windowStylesStyle", "_PanelStyle", "_activeButtonStyleStyle", "_errorTipStyle", "_richTextEditorTextAreaStyleStyle", "_todayStyleStyle", "_dateFieldPopupStyle", "_plainStyle", "_dataGridStylesStyle", "_ApplicationStyle", "_headerDateTextStyle", "_ButtonStyle", "_AlertStyle", "_opaquePanelStyle", "_weekDayStyleStyle", "_headerDragProxyStyleStyle"]
,
"viewSourceURL" : "srcview/index.html"}; }
}}
