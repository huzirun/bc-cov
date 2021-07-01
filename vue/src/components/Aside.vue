<template>
  <div>
    <el-menu
        style="width: 200px; min-height: calc(100vh - 50px)"
        default-active="2"
        class="el-menu-vertical-demo">
      <el-submenu index="1-4">
        <template #title>选项1</template>
        <el-menu-item index="1-4-1">选项1-1</el-menu-item>
      </el-submenu>
      <el-menu-item index="2">
        <i class="el-icon-menu"></i>
        <template #title>导航二</template>
      </el-menu-item>
      <el-menu-item index="4">
        <i class="el-icon-setting"></i>
        <template #title>导航四</template>
      </el-menu-item>
    </el-menu>
  </div>
</template>

<script>
export default {
  name: "Aside"
}
</script>

<style scoped>

</style>