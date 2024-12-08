<template>
  <!-- <wd-config-provider :themeVars="themeVars"> -->
  <view
    class="bg-white overflow-scroll pt-10 px-10"
    :style="{ marginTop: safeAreaInsets?.top + 'px' }"
  <slot />
  ></view>
  <!-- <wd-toast /> -->
  <!-- <wd-message-box /> -->
  <!-- </wd-config-provider> -->
</template>

<script lang="ts" setup>
import type { ConfigProviderThemeVars } from 'wot-design-uni'

const themeVars: ConfigProviderThemeVars = {
  // colorTheme: 'red',
  // buttonPrimaryBgColor: '#07c160',
  // buttonPrimaryColor: '#07c160',
}

// 获取屏幕边界到安全区域距离
const { safeAreaInsets } = uni.getSystemInfoSync()
</script>
