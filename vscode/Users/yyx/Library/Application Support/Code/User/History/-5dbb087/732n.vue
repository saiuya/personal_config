<template>
  <wd-swiper
    :list="swiperList"
    autoplay
    :indicator="dotMode as boolean"
    v-model:current="current"
    @click="handleClick"
    @change="onChange"
  ></wd-swiper>
</template>

<script setup lang="ts">
import Image1 from '@/img/1.png'

const current = ref<number>(0)
const dotMode = ref<unknown>({ type: 'dots-bar' })

interface SwiperImage {
  image: string
}

const swiperList = ref([Image1])

function handleClick(e) {
  console.log(e)
}
function onChange(e) {
  console.log(e)
}
</script>
