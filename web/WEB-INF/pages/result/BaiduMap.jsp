<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
    #map{
	 	 	position:absolute;
	 	 	top:140px;   
	 		margin-left: 25px; 
		}
    #mapCaption{
 	 		position:absolute;
 	 		top:75px;   
 			margin-left: 200px; 
		}
    #addressMsg{
 	 		position:absolute;
 	 		top:105px;
 			margin-left: 150px; 
		}
	/*画横线 */
    #line1{
 	 		position:absolute;
 	 		top:352px;
 			margin-left: 311px; 
		}
	/*画竖线 */
    #line2{
 	 		position:absolute;
 	 		top:345px;
 			margin-left: 320px; 
		}
</style>
<div id="mapCaption">
	<span style="font-size: 20px; font-weight:bold;"> 
			GPS全球定位系统 — 悬浮物浓度位置信息
	</span>
</div>
<div id="addressMsg">
	<span style="font-size: 20px; font-weight:bold;"> 
		经纬度：北纬（N23.16048）, 东经（E113.35331）
	</span>
</div>
<!--  百度地图 -->
<div  id="map" style="width:720px; height:460px; border:#ccc solid 1px; font-size:12px; z-index:1">
	
</div>

<!--  画横线-->
<div id="line1" style="width:22px; height:4px; background-color: #FF0000; z-index:2" >
</div> 
<!--  画竖线-->
<div id="line2" style="width:4px; height:22px; background-color: #FF0000; z-index:3" >
</div> 

<script type="text/javascript">
	
    //百度地图
    function initMap(){
      createMap();
      setMapEvent();
      addMapControl();
      addMapOverlay();
    }
    function createMap(){ 
      map = new BMap.Map("map"); 
      map.centerAndZoom(new BMap.Point(113.353552,23.160348),18);
    }
    function setMapEvent(){
      map.enableScrollWheelZoom();
      map.enableKeyboard();
      map.enableDragging();
      map.enableDoubleClickZoom()
    }
    function addClickHandler(target,window){
      target.addEventListener("click",function(){
        target.openInfoWindow(window);
      });
    }
    function addMapOverlay(){
    }
    function addMapControl(){
      var scaleControl = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
      scaleControl.setUnit(BMAP_UNIT_IMPERIAL);
      map.addControl(scaleControl);
      var navControl = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
      map.addControl(navControl);
      var overviewControl = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:true});
      map.addControl(overviewControl);
    }
    var map;
      initMap();
  </script>
</html>