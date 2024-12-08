<template>
  <Image1 />

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
import { Image1 } from '@/img/1.png'
import Image2 from '@/img/2.png'
import Image3 from '@/img/3.png'
import Image4 from '@/img/4.png'
import Image5 from '@/img/5.png'

const current = ref<number>(0)
const dotMode = ref<unknown>({ type: 'dots-bar' })

interface SwiperImage {
  image: string
}
const swiperList = ref([Image1, Image2, Image3, Image4, Image5])

function handleClick(e) {
  console.log(e)
}
function onChange(e) {
  console.log(e)
}
</script>
