<template>
  <div>
    <el-menu
        style="width: 200px; min-height: calc(100vh - 50px)"
        :default-active="$route.path"
        router
    >
      <div  v-for="m in user.permissions" :key="m.id">
        <el-menu-item :index="m.path" v-if="m.name !== 'Person' && m.name !== 'Password' ">
          <i :class="m.icon"></i>  {{ m.comment }}
        </el-menu-item>
      </div>
    </el-menu>
  </div>
</template>

<script>

export default {
  name: "Aside",
  data() {
    return {
      user: {}
    }
  },
  created() {
    let userStr = sessionStorage.getItem("user") || "{}"
    this.user = JSON.parse(userStr)

  }
}
</script>

<style scoped>

</style>
