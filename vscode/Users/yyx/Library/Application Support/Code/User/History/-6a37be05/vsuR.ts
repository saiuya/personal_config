import { defineUniPages } from '@uni-helper/vite-plugin-uni-pages'

export default defineUniPages({
  pages: [
    {
      path: 'pages/home/home',
      type: '首页',
      style: {
        navigationBarTitleText: '首页',
      },
    },
    {
      path: 'pages/category/category',
      type: '分类',
      style: {
        navigationBarTitleText: '分类',
      },
    },
    {
      path: 'pages/cart/cart',
      type: '购物车',
      style: {
        navigationBarTitleText: '购物车',
      },
    },
    {
      path: 'pages/my/my',
      type: '我的',
      style: {
        navigationBarTitleText: '我的',
      },
    },
  ],
  globalStyle: {
    backgroundColor: '@bgColor',
    backgroundColorBottom: '@bgColorBottom',
    backgroundColorTop: '@bgColorTop',
    backgroundTextStyle: '@bgTxtStyle',
    navigationBarBackgroundColor: '#000000',
    navigationBarTextStyle: '@navTxtStyle',
    navigationBarTitleText: 'Vitesse-Uni',
    navigationStyle: 'custom',
  },
  // tabBar: {
  //   backgroundColor: "@tabBgColor",
  //   borderStyle: "@tabBorderStyle",
  //   color: "@tabFontColor",
  //   selectedColor: "@tabSelectedColor",
  // },
})
