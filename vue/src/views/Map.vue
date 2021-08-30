<template>
  <div>
    <div id="container" style="width: 100%;height:100%"></div>
  </div>
</template>

<script>
export default {
  name: "Map",
  data() {
    return {

    }
  },
  mounted() {
    // 百度地图API功能
    var map = new BMapGL.Map('container'); // 创建Map实例
    map.centerAndZoom(new BMapGL.Point(116.404, 39.915), 12); // 初始化地图,设置中心点坐标和地图级别
    map.enableScrollWheelZoom(true); // 开启鼠标滚轮缩放

    function myFun(result){
      var cityName = result.name;
      map.setCenter(cityName);
      // alert("当前定位城市:"+cityName);
    }
    var myCity = new BMapGL.LocalCity();
    myCity.get(myFun);

  }
}
</script>

<style scoped>

</style>
