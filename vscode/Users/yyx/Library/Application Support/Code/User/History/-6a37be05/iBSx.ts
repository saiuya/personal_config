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
  tabBar: {
    backgroundColor: "@tabBgColor",
    borderStyle: "@tabBorderStyle",
    color: "@tabFontColor",
    selectedColor: "@tabSelectedColor",
"list": [
      { // tab 的列表，详见 list 属性说明，最少2个、最多5个 tab
        "text": "首页", // tab 上按钮文字，在 App 和 H5 平台为非必填。例如中间可放一个没有文字的+号图标
        "pagePath": "pages/index" // 页面路径，必须在 pages 中先定义
        // "iconPath": "static/vite.png", // 图片路径，icon 大小限制为40kb，建议尺寸为 81px * 81px，当 position 为 top 时，此参数无效，不支持网络图片，不支持字体图标
        // "selectedIconPath": "static/logo.svg" // 选中时的图片路径，icon 大小限制为40kb，建议尺寸为 81px * 81px ，当 position 为 top 时，此参数无效
      },
      {
        "text": "分类",
        "pagePath": "pages/category/category"
        // "iconPath": "static/vite.png", // 图片路径，icon 大小限制为40kb，建议尺寸为 81px * 81px，当 position 为 top 时，此参数无效，不支持网络图片，不支持字体图标
        // "selectedIconPath": "static/logo.svg" // 选中时的图片路径，icon 大小限制为40kb，建议尺寸为 81px * 81px ，当 position 为 top 时，此参数无效
      }
    ]
  },

})
