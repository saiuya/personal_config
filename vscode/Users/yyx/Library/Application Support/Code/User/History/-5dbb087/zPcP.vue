<template>
  <wd-swiper
    :list="swiperList"
    autoplay
    :indicator="{ type: 'dots-bar' } as unknown as boolean"
    v-model:current="current"
    @click="handleClick"
    @change="onChange"
  ></wd-swiper>
</template>

<script setup lang="ts">
const current = ref<number>(0)
const dotMode = ref<{} | boolean>>()

const swiperList = ref([
  'https://registry.npmmirror.com/wot-design-uni-assets/*/files/redpanda.jpg',
  'https://registry.npmmirror.com/wot-design-uni-assets/*/files/capybara.jpg',
  'https://registry.npmmirror.com/wot-design-uni-assets/*/files/panda.jpg',
  'https://registry.npmmirror.com/wot-design-uni-assets/*/files/moon.jpg',
  'https://registry.npmmirror.com/wot-design-uni-assets/*/files/meng.jpg',
])
function handleClick(e) {
  console.log(e)
}
function onChange(e) {
  console.log(e)
}
</script>
