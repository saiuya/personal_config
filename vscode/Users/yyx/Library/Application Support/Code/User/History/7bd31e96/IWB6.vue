<route lang="json5">
{
  style: {
    navigationBarTitleText: '关于Yan',
  },
}
</route>

<template>
  <view class="text-center text-3xl mt-8">
    鸽友们好，我是
    <text class="text-red-500">菲鸽</text>
  </view>
  <RequestComp />
  <UploadComp />
</template>

<script lang="ts" setup>
import RequestComp from './components/request.vue'
import UploadComp from './components/upload.vue'
</script>

<style lang="scss" scoped>
.test-css {
  // mt-4=>1rem=>16px;
  margin-top: 16px;
}
</style>
