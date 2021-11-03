<template>
  <div>
    <el-menu
        style="width: 200px; min-height: calc(100vh - 50px)"
        :default-active="path"
        router
    >
      <el-menu-item index="/home">
        <i class="el-icon-house"></i>  主页
      </el-menu-item>
      <el-menu-item index="/category">
        <i class="el-icon-menu"></i> 分类管理
      </el-menu-item>
      <el-menu-item index="/book">
        <i class="el-icon-files"></i> 书籍管理
      </el-menu-item>
      <el-menu-item index="/order">
        <i class="el-icon-s-order"></i> 我的订单
      </el-menu-item>
      <el-menu-item index="/news">
        <i class="el-icon-news"></i> 新闻管理
      </el-menu-item>
      <el-menu-item index="/map"><i class="el-icon-map-location"></i> 百度地图</el-menu-item>
      <el-menu-item index="/im">
        <i class="el-icon-chat-round"></i> 聊天室
      </el-menu-item>
      <el-menu-item index="/message">
        <i class="el-icon-message"></i> 聊天室在线留言
      </el-menu-item>
      <el-submenu index="1" v-if="user.role === 1">
        <template #title>
          <i class="el-icon-s-tools"></i> 系统管理
        </template>
        <el-menu-item index="/user">
          <i class="el-icon-user"></i> 用户管理
        </el-menu-item>
      </el-submenu>
      <el-menu-item index="/donate">
        <i class="el-icon-coffee"></i> 请作者喝杯咖啡
      </el-menu-item>
    </el-menu>
  </div>
</template>

<script>
import request from "@/utils/request";

export default {
  name: "Aside",
  data() {
    return {
      user: {},
      path: this.$route.path   // 设置默认高亮的菜单
    }
  },
  created() {
    let userStr = sessionStorage.getItem("user") || "{}"
    this.user = JSON.parse(userStr)

    // 请求服务端，确认当前登录用户的 合法信息
    request.get("/user/" + this.user.id).then(res => {
      if (res.code === '0') {
        this.user = res.data
      }
    })
  }
}
</script>

<style scoped>

</style>
