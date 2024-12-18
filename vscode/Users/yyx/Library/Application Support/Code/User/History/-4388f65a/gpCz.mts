import { Logger, ViteDevServer, Plugin } from 'vite';
import { LoadConfigSource } from 'unconfig';
import { FSWatcher } from 'chokidar';
import Debug from 'debug';
import { SFCBlock, SFCDescriptor } from '@vue/compiler-sfc';

interface ConditionItem {
    /**
     * 启动模式名称
     */
    name: string;
    /**
     * 启动页面路径
     */
    path: string;
    /**
     * 启动参数，可在页面的 onLoad 函数里获得
     */
    query?: string;
}
interface Condition {
    /**
     * 当前激活的模式，list 节点的索引值
     */
    current: number;
    /**
     * 启动模式列表
     */
    list: Partial<ConditionItem>[];
}

interface EasyCom {
    /**
     * 是否开启自动扫描，开启后将会自动扫描符合 `components/组件名称/组件名称.vue` 目录结构的组件
     *
     * @default true
     */
    autoscan?: boolean;
    /**
     * 以正则方式自定义组件匹配规则
     *
     * 如果 `autoscan` 不能满足需求，可以使用 `custom` 自定义匹配规则
     *
     * @example
     * "custom": {
     *   "^uni-(.*)": "@/components/uni-$1.vue", // 匹配 components 目录内的 vue 文件
     *   "^vue-file-(.*)": "packageName/path/to/vue-file-$1.vue" // 匹配 node_modules 内的 vue 文件
     * }
  }
     */
    custom?: Record<string, string>;
}

type RGBAColor = `rgba(${number}, ${number}, ${number}, ${number})`;
type HEXColor = `#${string}`;
type PxSize = `${number}px`;
type PercentageSize = `${number}%`;
type ThemeVar = `@${string}`;
/**
 * 窗口动画，详见 [窗口动画](https://uniapp.dcloud.net.cn/api/router.html#animation)
 */
type AnimationType = 'slide-in-right' | 'slide-in-left' | 'slide-in-top' | 'slide-in-bottom' | 'pop-in' | 'fade-in' | 'zoom-out' | 'zoom-fade-out' | 'none';
interface TitleNViewButton {
    /**
     * 自定义按钮样式，详见 [自定义按钮样式](https://uniapp.dcloud.net.cn/collocation/pages#app-titlenview-buttons-type)
     *
     * "forward" 前进按钮
     *
     * "back" 后退按钮
     *
     * "share" 分享按钮
     *
     * "favorite" 收藏按钮
     *
     * "home" 主页按钮
     *
     * "menu" 菜单按钮
     *
     * "close" 关闭按钮
     *
     * "none" 无样式，需通过 text 属性设置按钮上显示的内容、通过 fontSrc 属性设置使用的字体库
     *
     * @default "none"
     */
    type?: 'forward' | 'back' | 'share' | 'favorite' | 'home' | 'menu' | 'close' | 'none';
    /**
     * 自定义按钮文字颜色，支持 HEX 颜色
     *
     * @default 与标题文字样式一样
     *
     * @format color
     */
    color?: HEXColor;
    /**
     * 自定义按钮背景色，仅在标题栏 type 为 "transparent" 时生效，支持 HEX 和 RGBA 颜色
     *
     * @default 灰色半透明
     *
     * @format color
     */
    background?: HEXColor | RGBAColor;
    /**
     * 自定义按钮按下状态文字颜色，支持 HEX 和 RGBA 颜色
     *
     * @default color 属性值自动调整透明度为 0.3
     *
     * @format color
     */
    colorPressed?: HEXColor | RGBAColor;
    /**
     * 自定义按钮在标题栏的显示位置，仅支持 "right" / "left"
     *
     * "right" 右侧
     *
     * "left" 左侧
     *
     * @default "right"
     */
    float?: 'right' | 'left';
    /**
     * 自定义按钮文字粗细，仅支持 "normal" | "bold"
     *
     * "normal" 标准
     *
     * "bold" 加粗
     *
     * @default "normal"
     */
    fontWeight?: 'normal' | 'bold';
    /**
     * 自定义按钮文字大小
     */
    fontSize?: string;
    /**
     * 自定义按钮字体文件路径，只支持本地地址
     */
    fontSrc?: string;
    /**
     * 自定义按钮是否显示选择指示图标（向下箭头），常用于城市选择
     *
     * @default false
     */
    select?: boolean;
    /**
     * 自定义按钮文字内容。使用字体图标时 unicode 字符表示必须以"\\u" 开头，如 "\\ue123"
     */
    text?: string;
    /**
     * 自定义按钮文字宽度，支持单位为 px 的逻辑像素值或 "auto"，按钮内容居中显示
     *
     * @default "44px"
     */
    width?: PxSize | 'auto';
}

interface H5 {
    /**
     * 导航栏，详见 [导航栏](https://uniapp.dcloud.net.cn/collocation/pages#h5-titlenview)
     */
    titleNView?: false | {
        /**
         * 背景颜色，支持 HEX 颜色
         *
         * @default "#F7F7F7"
         *
         * @format color
         */
        backgroundColor?: HEXColor;
        /**
         * 自定义按钮，详见 [自定义按钮](https://uniapp.dcloud.net.cn/collocation/pages#app-titlenview-buttons)
         */
        buttons?: TitleNViewButton[];
        /**
         * 标题文字颜色，支持 HEX 颜色
         *
         * @default "#000000"
         *
         * @format color
         */
        titleColor?: HEXColor;
        /**
         * 标题文字内容
         */
        titleText?: string;
        /**
         * 标题文字大小
         */
        titleSize?: string;
        /**
         * 导航栏样式
         *
         * "default" 默认样式
         *
         * "transparent" 滚动透明渐变
         *
         * @default "default"
         */
        type?: 'default' | 'transparent';
        /**
         * 导航栏上的搜索框配置，详见 [searchInput](https://uniapp.dcloud.net.cn/collocation/pages#h5-searchinput)
         *
         * @desc 1.6.5
         */
        searchInput?: {
            /**
             * 是否自动获取焦点
             *
             * @default false
             */
            autoFocus?: boolean;
            /**
             * 非输入状态下文本的对齐方式
             *
             * "left" 居左对齐
             *
             * "right" 居右对齐
             *
             * "center" 居中对齐
             *
             * @default "center"
             */
            align?: 'center' | 'left' | 'right';
            /**
             * 背景颜色，支持 HEX 和 RGBA 颜色
             *
             * @default "rgba(255,255,255,0.5)"
             *
             * @format color
             */
            backgroundColor?: HEXColor | RGBAColor;
            /**
             * 输入框的圆角半径，单位为 px
             *
             * @default "0px"
             */
            borderRadius?: PxSize;
            /**
             * 提示文本
             */
            placeholder?: string;
            /**
             * 提示文本颜色，支持 HEX 颜色
             *
             * @default "#CCCCCC"
             *
             * @format color
             */
            placeholderColor?: HEXColor;
            /**
             * 是否禁止输入
             *
             * @default false
             */
            disabled?: boolean;
            [x: string]: any;
        };
        [x: string]: any;
    };
    /**
     * 下拉刷新，详见 [下拉刷新](https://uniapp.dcloud.net.cn/collocation/pages#h5-pulltorefresh)
     */
    pullToRefresh?: {
        /**
         * 下拉刷新控件颜色，支持 HEX 颜色
         *
         * @default "#2BD009"
         */
        color?: HEXColor;
        /**
         * 下拉刷新控件起始位置，支持支持单位为 px 的逻辑像素值或百分比
         *
         * @default "0px"
         */
        offset?: PxSize | PercentageSize;
        [x: string]: any;
    };
    [x: string]: any;
}

interface AppPlus {
    /**
     * 窗体背景色，支持 HEX 颜色
     *
     * 无论 vue 页面还是 nvue 页面，在 App 上都有一个父级原生窗体，该窗体的背景色生效时间快于页面里的 css 生效时间
     *
     * @default "#FFFFFF"
     *
     * @desc App (vue 页面需要将 body 背景色设为透明)
     *
     * @format color
     */
    background?: HEXColor;
    /**
     * 导航栏，详见 [导航栏](https://uniapp.dcloud.net.cn/collocation/pages#app-titlenview)
     *
     * 当 navigationStyle 设为 "custom" 或 titleNView 设为 false时，原生导航栏不显示，详见 [自定义导航栏使用注意](https://uniapp.dcloud.net.cn/collocation/pages#customnav)
     */
    titleNView?: false | {
        /**
         * 背景颜色，支持 HEX 和 RGBA 颜色，App 端仅悬浮导航栏支持 RGBA 颜色
         *
         * @default "#F7F7F7"
         *
         * @format color
         */
        backgroundColor?: HEXColor | RGBAColor;
        /**
         * 自定义按钮，详见 [自定义按钮](https://uniapp.dcloud.net.cn/collocation/pages#app-titlenview-buttons)
         *
         * @desc 纯 nvue 即 render:native 时暂不支持
         */
        buttons?: TitleNViewButton[];
        /**
         * 标题文字颜色，支持 HEX 颜色
         *
         * @default "#000000"
         *
         * @format color
         */
        titleColor?: HEXColor;
        /**
         * 标题文字超出显示区域时处理方式
         *
         * "ellipsis" 超出显示区域时尾部显示省略标记（...）
         *
         * "clip" 超出显示区域时内容裁剪
         *
         * @default "ellipsis"
         */
        titleOverflow?: 'ellipsis' | 'clip';
        /**
         * 标题文字内容
         */
        titleText?: string;
        /**
         * 标题文字大小
         */
        titleSize?: string;
        /**
         * 导航栏样式
         *
         * "default" 默认样式
         *
         * "transparent" 滚动透明渐变
         *
         * "float" 悬浮导航栏
         *
         * @default "default"
         */
        type?: 'default' | 'transparent' | 'float';
        /**
         * 原生 View 增强，详见 [5+ View 控件](http://www.html5plus.org/doc/zh_cn/nativeobj.html#plus.nativeObj.ViewDrawTagStyles)
         */
        tags?: {
            /**
             * 绘制操作标识
             *
             * 可通过 view 对象的 drawBitmap / drawRect / drawText / clearRect 方法进行更新
             */
            id?: string;
            /**
             * 绘制操作类型
             *
             * "img" 绘制图片，与 drawBitmap 操作一致，此时 id、src、position、sprite 属性值有效
             *
             * "rect" 绘制矩形区域，与 drawRect 操作一致，此时 id、color、position、rectStyles 属性值有效
             *
             * "font" 绘制文本内容，与 drawText 操作一致，此时 id、position、text、textStyles 属性值有效
             *
             * "richtext" 绘制富文本内容，与 drawRichText 操作一致，此时 id、position、text、richTextStyles 属性值有效
             *
             * "input" 绘制输入框内容，此时 id、position、inputStyles 属性值有效
             */
            tag?: 'img' | 'rect' | 'font' | 'richtext' | 'input';
            /**
             * 矩形区域颜色，支持 HEX 和 RGBA 颜色
             *
             * 不推荐使用，推荐使用 rectStyles
             *
             * 当 tag 属性值为 "rect" 时有效，用于指定矩形区域颜色
             *
             * @default "#FFFFFF"
             *
             * @format color
             */
            color?: HEXColor | RGBAColor;
            /**
             * 绘制输入框的样式
             *
             * 当 tag 属性值为 "input" 时有效，用于指定绘制输入框的样式、大小位置等信息
             */
            inputStyles?: {
                /**
                 * 输入框类型
                 *
                 * "email" 邮箱地址输入框
                 *
                 * "number" 数字输入框
                 *
                 * "search" 搜索文本输入框
                 *
                 * "tel" 电话号码输入框
                 *
                 * "text" 普通文本输入框
                 *
                 * "url" URL地址输入框
                 *
                 * @default "text"
                 */
                type?: 'email' | 'number' | 'search' | 'tel' | 'text' | 'url';
                /**
                 * 输入框的提示文本
                 *
                 * 当用户未输入内容时显示在编辑框中（灰色文字）。
                 */
                placeholder?: string;
                /**
                 * 输入框的字体大小，单位为 px
                 *
                 * @default "16px"
                 */
                fontSize?: PxSize;
                /**
                 * 输入框的边框颜色，支持 HEX 颜色
                 *
                 * @default "#000000"
                 *
                 * @format color
                 */
                borderColor?: HEXColor;
                /**
                 * 输入框的边框圆角半径，单位为 px
                 *
                 * @default "0px"
                 */
                borderRadius?: PxSize;
                /**
                 * 输入框的边框宽度，单位为 px
                 *
                 * @default "1px"
                 */
                borderWidth?: PxSize;
                [x: string]: any;
            };
            /**
             * 绘制内容区域，相对于 View 控件的区域信息
             *
             * 当 tag 属性值为 "img" 时，用于指定绘制图片的目标区域
             *
             * 当 tag 属性值为 "rect" 时，用于指定绘制的矩形区域
             *
             * 当 tag 属性值为 "font" 时，用于指定绘制文本的目标区域，此时 height 属性值支持设置为 "wrap_content"，表示文本高度根据内容自动计算，此时通过 top 来定位文本绘制的起始位置
             *
             * @default { top: '0px', left: '0px', width: '100%', height: '100%' }
             */
            position?: {
                /**
                 * 区域顶部相对于作用对象或容器向下的偏移量，支持单位为 px 的逻辑像素值、百分比（相对于作用对象或容器的高度）或 "auto"
                 *
                 * @default "0px"
                 */
                top?: PxSize | PercentageSize | 'auto';
                /**
                 * 区域顶部相对于作用对象或容器向右的偏移量，支持单位为 px 的逻辑像素值、百分比（相对于作用对象或容器的高度）或 "auto"
                 *
                 * @default "0px"
                 */
                left?: PxSize | PercentageSize | 'auto';
                /**
                 * 区域宽度，相对于作用对象或容器的宽度，支持单位为 px 的逻辑像素值或百分比
                 *
                 * @default "100%"
                 */
                width?: PxSize | PercentageSize;
                /**
                 * 区域高度，相对于作用对象或容器的高度，支持单位为 px 的逻辑像素值或百分比
                 *
                 * @default "100%"
                 */
                height?: PxSize | PercentageSize;
                /**
                 * 区域顶部相对于作用对象或容器向上的偏移量，支持单位为 px 的逻辑像素值、百分比（相对于作用对象或容器的高度）或 "auto"
                 *
                 * 当设置了 top 和 height 值时，忽略此属性值
                 *
                 * 当未设置 top 值时，可通过 bottom 属性值来确定区域的垂直位置
                 *
                 * 当未设置 height 值时，可通过 top 和 bottom 属性值来确定区域的高度
                 */
                bottom?: PxSize | PercentageSize | 'auto';
                /**
                 * 区域顶部相对于作用对象或容器向左的偏移量，支持单位为 px 的逻辑像素值、百分比（相对于作用对象或容器的高度）或 "auto"
                 *
                 * 当设置了 left 和 width 值时，忽略此属性值
                 *
                 * 当未设置 left 值时，可通过 right 属性值来确定区域的水平位置
                 *
                 * 当未设置 width 值时，可通过 left 和 right 属性值来确定区域的宽度
                 */
                right?: PxSize | PercentageSize | 'auto';
                [x: string]: any;
            };
            /**
             * 绘制区域的样式
             *
             * 当 tag 属性值为 "rect" 时有效，用于指定绘制区域的样式、填充颜色、圆角大小等信息
             */
            rectStyles?: {
                /**
                 * 绘制颜色，矩形填充区域的颜色，支持 HEX 和 RGBA 颜色
                 *
                 * @default "#FFFFFF"
                 *
                 * @format color
                 */
                color?: HEXColor | RGBAColor;
                /**
                 * 矩形区域的圆角半径，单位为 px
                 *
                 * @default "0px"
                 */
                radius?: PxSize;
                /**
                 * 矩形边框颜色，绘制矩形边框的颜色，支持 HEX 和 RGBA 颜色
                 *
                 * @default color 属性值
                 *
                 * @format color
                 */
                borderColor?: HEXColor | RGBAColor;
                /**
                 * 矩形边框宽度，单位为 px
                 *
                 * @default "0px"
                 */
                borderWidth?: PxSize;
                [x: string]: any;
            };
            /**
             * 绘制的图片资源
             *
             * 当 tag 属性值为 "img" 时有效，可以是图片资源路径（字符串类型）或者图片对象（plus.nativeObj.Bitmap对象）
             *
             * src 路径支持 gif 图片，设置的图片路径文件使用 ".gif" 后缀时则认为是 gif 图片，如"_www/loading.gif"
             */
            src?: string;
            /**
             * 图片源的绘制区域
             *
             * 当 tag 属性值为 "img" 时有效，用于指定图片源的绘制区域，相对于图片的区域信息
             *
             * @default { top: '0px', left: '0px', width: '100%', height: '100%' }
             */
            sprite?: {
                /**
                 * 区域顶部相对于作用对象或容器向下的偏移量，支持单位为 px 的逻辑像素值、百分比（相对于作用对象或容器的高度）或 "auto"
                 *
                 * @default "0px"
                 */
                top?: PxSize | PercentageSize | 'auto';
                /**
                 * 区域顶部相对于作用对象或容器向右的偏移量，支持单位为 px 的逻辑像素值、百分比（相对于作用对象或容器的高度）或 "auto"
                 *
                 * @default "0px"
                 */
                left?: PxSize | PercentageSize | 'auto';
                /**
                 * 区域宽度，相对于作用对象或容器的宽度，支持单位为 px 的逻辑像素值或百分比
                 *
                 * @default "100%"
                 */
                width?: PxSize | PercentageSize;
                /**
                 * 区域高度，相对于作用对象或容器的高度，支持单位为 px 的逻辑像素值或百分比
                 *
                 * @default "100%"
                 */
                height?: PxSize | PercentageSize;
                /**
                 * 区域顶部相对于作用对象或容器向上的偏移量，支持单位为 px 的逻辑像素值、百分比（相对于作用对象或容器的高度）或 "auto"
                 *
                 * 当设置了 top 和 height 值时，忽略此属性值
                 *
                 * 当未设置 top 值时，可通过 bottom 属性值来确定区域的垂直位置
                 *
                 * 当未设置 height 值时，可通过 top 和 bottom 属性值来确定区域的高度
                 */
                bottom?: PxSize | PercentageSize | 'auto';
                /**
                 * 区域顶部相对于作用对象或容器向左的偏移量，支持单位为 px 的逻辑像素值、百分比（相对于作用对象或容器的高度）或 "auto"
                 *
                 * 当设置了 left 和 width 值时，忽略此属性值
                 *
                 * 当未设置 left 值时，可通过 right 属性值来确定区域的水平位置
                 *
                 * 当未设置 width 值时，可通过 left 和 right 属性值来确定区域的宽度
                 */
                right?: PxSize | PercentageSize | 'auto';
                [x: string]: any;
            };
            /**
             * 绘制的文本内容
             *
             * 当 tag 属性值为 "font" 时有效，用于保存绘制的文本内容
             */
            text?: string;
            /**
             * 绘制文本的样式
             *
             * 当 tag 属性值为 "font" 时有效，用于指定绘制文本内容的字体大小、字体颜色、字体类型等信息
             */
            textStyles?: {
                /**
                 * 水平对齐方式
                 *
                 * "left" 字体在指定的区域中水平居左对齐
                 *
                 * "center" 字体在指定的区域中水平居中对齐
                 *
                 * "right" 字体在指定的区域中水平居右对齐
                 *
                 * @default "center"
                 */
                align?: 'left' | 'right' | 'center';
                /**
                 * 字体颜色，支持 HEX 和 RGBA 颜色
                 *
                 * @default "#000000"
                 *
                 * @format color
                 */
                color?: HEXColor | RGBAColor;
                /**
                 * 文本装饰
                 *
                 * "none" 无装饰效果
                 *
                 * "underline" 文本带下划线效果
                 *
                 * "line-through" 文本带贯穿线（删除线）效果
                 *
                 * @default "none"
                 */
                decoration?: 'none' | 'underline' | 'line-through';
                /**
                 * 字体名称，如果指定名称的字体不存在，则使用默认字体
                 */
                family?: string;
                /**
                 * 字体文件路径
                 */
                fontSrc?: string;
                /**
                 * 文本行间距，支持单位为 px 的逻辑像素值或百分比
                 *
                 * @default "20%"
                 */
                lineSpacing?: PxSize | PercentageSize;
                /**
                 * 文本间距，用于设置字体在绘制目标区域四个方向（top / right / bottom / left）的边距，支持单位为 px 的逻辑像素值或百分比（相对于绘制目标区域）
                 *
                 * @default "0px"
                 */
                margin?: string;
                /**
                 * 文本内容超出显示区域时处理方式
                 *
                 * "clip" 超出显示区域时内容裁剪
                 *
                 * "ellipsis" 超出显示区域时尾部显示省略标记（...）
                 *
                 * @default "clip"
                 */
                overflow?: 'clip' | 'ellipsis';
                /**
                 * 字体大小，单位为 px
                 *
                 * @default "16px"
                 */
                size?: PxSize;
                /**
                 * 字体样式
                 *
                 * "normal" 正常样式
                 *
                 * "italic" 斜体样式
                 *
                 * @default "normal"
                 */
                style?: 'normal' | 'italic';
                /**
                 * 垂直对齐方式，文本内容在指定绘制区域中的垂直对齐方式
                 *
                 * "top" 垂直居顶对齐
                 *
                 * "middle" 垂直居中对齐
                 *
                 * "bottom" - 垂直居底对齐
                 *
                 * @default "middle"
                 */
                verticalAlign?: 'top' | 'middle' | 'bottom';
                /**
                 * 字体粗细
                 *
                 * "normal" 正常
                 *
                 * "bold" 粗体
                 *
                 * @default "normal"
                 */
                weight?: 'normal' | 'bold';
                /**
                 * 文本换行模式
                 *
                 * "nowrap" 不换行，将所有文本在一行中绘制，忽略换行符("\n")
                 *
                 * "normal" 自动换行，当指定的宽度无法绘制所有文本时自动换行绘制，碰到 "\n" 字符时强制换行
                 *
                 * @default "nowrap"
                 */
                whiteSpace?: 'normal' | 'nowrap';
                [x: string]: any;
            };
            /**
             * 绘制富文本的样式
             *
             * 当 tag 属性值为 "richtext" 时有效，用于指定绘制富文本内容的默认字体颜色、字体类型等信息
             */
            richTextStyles?: {
                /**
                 * 富文本内容的水平对齐方式，对整体内容有效，无法单独控制每行的内容
                 *
                 * "left" 字体在指定的区域中水平居左对齐
                 *
                 * "center" 字体在指定的区域中水平居中对齐
                 *
                 * "right" 字体在指定的区域中水平居右对齐
                 *
                 * @default "left"
                 */
                align?: 'left' | 'right' | 'center';
                /**
                 * 富文本默认使用的字体名称，如果指定名称的字体不存在，则使用默认字体
                 */
                family?: string;
                /**
                 * 富文本默认使用的字体文件路径，必须为本地路径，如果指定的文件路径无效，则使用系统默认字体
                 */
                fontSrc?: string;
                [x: string]: any;
            };
            [x: string]: any;
        }[];
        /**
         * 原生导航栏上的搜索框配置，详见 [searchInput](https://uniapp.dcloud.net.cn/collocation/pages#app-titlenview-searchinput)
         *
         * @desc 1.6.0
         */
        searchInput?: {
            /**
             * 是否自动获取焦点
             *
             * @default false
             */
            autoFocus?: boolean;
            /**
             * 非输入状态下文本的对齐方式
             *
             * "left" 居左对齐
             *
             * "right" 居右对齐
             *
             * "center" 居中对齐
             *
             * @default "center"
             */
            align?: 'center' | 'left' | 'right';
            /**
             * 背景颜色，支持 HEX 和 RGBA 颜色
             *
             * @default "rgba(255,255,255,0.5)"
             *
             * @format color
             */
            backgroundColor?: HEXColor | RGBAColor;
            /**
             * 输入框的圆角半径，单位为 px
             *
             * @default "0px"
             */
            borderRadius?: PxSize;
            /**
             * 提示文本
             */
            placeholder?: string;
            /**
             * 提示文本颜色，支持 HEX 颜色
             *
             * @default "#CCCCCC"
             *
             * @format color
             */
            placeholderColor?: HEXColor;
            /**
             * 是否禁止输入
             *
             * @default false
             */
            disabled?: boolean;
            [x: string]: any;
        };
        /**
         * 标题栏控件是否显示 Home 按钮
         *
         * @default false
         */
        homeButton?: boolean;
        /**
         * 标题栏控件是否显示左侧返回按钮
         *
         * @desc App 2.6.3+
         *
         * @default true
         */
        autoBackButton?: boolean;
        /**
         * 返回按钮的样式，详见 [backButton](https://uniapp.dcloud.net.cn/collocation/pages#app-titlenview-backbuttonstyles)
         *
         * @desc App 2.6.3
         */
        backButton?: {
            /**
             * 背景颜色，仅在标题栏 type 为 "transparent" 时生效，当标题栏透明时按钮显示的背景颜色，支持 HEX 和 RGBA 颜色
             *
             * @default 灰色半透明
             *
             * @format color
             */
            background?: HEXColor | RGBAColor;
            /**
             * 角标文本，最多显示3个字符，超过则显示为 ...
             */
            badgeText?: string;
            /**
             * 图标和标题颜色，支持 HEX 和 RGBA 颜色
             *
             * @default 窗口标题栏控件的标题文字颜色
             *
             * @format color
             */
            color?: HEXColor | RGBAColor;
            /**
             * 按下状态按钮文字颜色，支持 HEX 和 RGBA 颜色
             *
             * @default color 属性值自动调整透明度为 0.3
             *
             * @format color
             */
            colorPressed?: HEXColor | RGBAColor;
            /**
             * 返回图标的粗细
             *
             * "normal" 正常
             *
             * "bold" 粗体
             *
             * @default "normal"
             */
            fontWeight?: 'normal' | 'bold';
            /**
             * 返回图标文字大小，单位为 px
             *
             * 窗口标题栏为透明样式 type 为 "transparent" 时，默认值为 "22px"
             *
             * 窗口标题栏为默认样式 type 为 "default" 时，默认值为 "27px"
             */
            fontSize?: PxSize;
            /**
             * 是否显示红点，当设置了角标文本时红点不显示
             *
             * @default false
             */
            redDot?: boolean;
            /**
             * 返回按钮上的标题，显示在返回图标（字体图标）后
             *
             * @default ""
             */
            title?: string;
            /**
             * 返回按钮上标题的粗细
             *
             * "normal" 正常
             *
             * "bold" 粗体
             */
            titleWeight?: 'normal' | 'bold';
            [x: string]: any;
        };
        /**
         * 背景图片
         *
         * 背景图片路径，如 "/static/img.png"，仅支持本地文件绝对路径，根据实际标题栏宽高拉伸绘制
         *
         * 渐变色，仅支持线性渐变，两种颜色的渐变，如 "linear-gradient(to top, #a80077, #66ff00)"，其中第一个参数为渐变方向，可选 "to right"（从左向右渐变）/ "to left"（从右向左渐变）/ "to bottom"（从上到下渐变）/ "to top"（从下到上渐变）/ "to bottom right"（从左上到右下渐变）/"to top left"（从左上到右下渐变）
         */
        backgroundImage?: string;
        /**
         * 仅在 backgroundImage 设置为图片路径时有效
         *
         * "repeat" 背景图片在垂直方向和水平方向平铺
         *
         * "repeat-x" 背景图片在水平方向平铺，垂直方向拉伸
         *
         * "repeat-y" 背景图片在垂直方向平铺，水平方向拉伸
         *
         * "no-repeat" 背景图片在垂直方向和水平方向都拉伸
         *
         * @default "no-repeat"
         */
        backgroundRepeat?: 'repeat' | 'repeat-x' | 'repeat-y' | 'no-repeat';
        /**
         * 文本对齐方式
         *
         * "center" 居中对齐
         *
         * "left" 居左对齐
         *
         * "auto" 根据平台自动选择（Android 平台居左对齐，iOS 平台居中对齐）
         *
         * @default "auto"
         */
        titleAlign?: 'auto' | 'center' | 'left';
        /**
         * 高斯模糊效果，仅在 type 为 "transparent" 或 "float" 时有效
         *
         * 使用模糊效果时应避免设置背景颜色，设置背景颜色可能覆盖模糊效果
         *
         * "dark" 暗风格模糊，对应 iOS 原生 UIBlurEffectStyleDark 效果
         *
         * "extralight" 高亮风格模糊，对应 iOS 原生 UIBlurEffectStyleExtraLight 效果
         *
         * "light" 亮风格模糊，对应 iOS 原生 UIBlurEffectStyleLight 效果
         *
         * "none" 无模糊效果
         *
         * @default "none"
         */
        blurEffect?: 'dark' | 'extralight' | 'light' | 'none';
        /**
         * 标题栏控件变化作用范围，仅在 type 为 "transparent" 时有效，页面滚动时标题栏背景透明度将发生变化
         *
         * 当页面滚动到指定偏移量时标题栏背景变为完全不透明
         *
         * 支持单位为 px 的逻辑像素值、百分比
         *
         * @default "132px"
         */
        coverage?: PxSize | PercentageSize;
        /**
         * 是否显示标题栏的底部分割线
         *
         * @desc 2.6.6
         *
         * @default false
         */
        splitLine?: boolean | {
            /**
             * 底部分割线颜色，支持 HEX 和 RGBA 颜色
             *
             * @default "#CCCCCC"
             *
             * @format color
             */
            color?: HEXColor | RGBAColor;
            /**
             * 底部分割线高度，支持单位为 px 的逻辑像素值、百分比
             *
             * @default "1px"
             */
            height?: PxSize | PercentageSize;
            [x: string]: any;
        };
        /**
         * 副标题文字颜色，支持 HEX 和 RGBA 颜色
         *
         * @desc 2.6.6
         *
         * @default 与主标题文字颜色一致
         *
         * @format color
         */
        subtitleColor?: HEXColor | RGBAColor;
        /**
         * 副标题文字字体大小，单位为 px
         *
         * "auto" 自动计算，约为 12px
         *
         * @desc 2.6.6
         *
         * @default "auto"
         */
        subtitleSize?: PxSize | 'auto';
        /**
         * 标题文字超出显示区域时处理方式
         *
         * "clip" 超出显示区域时内容裁剪
         *
         * "ellipsis" 超出显示区域时尾部显示省略标记（...）
         *
         * @desc 2.6.6
         *
         * @default "ellipsis"
         */
        subtitleOverflow?: 'clip' | 'ellipsis';
        /**
         * 副标题文字内容，设置副标题后将显示两行标题，副标题显示在主标题（titleText）下方
         *
         * 设置副标题后将居左显示
         *
         * @desc 2.6.6
         */
        subtitleText?: string;
        /**
         * 标题图标，图标路径如 "./img/t.png"，仅支持本地文件路径，相对路径，相对于当前页面的 host 位置，固定宽高为逻辑像素值 "34px"
         *
         * 图片的宽高需要相同
         *
         * 设置标题图标后标题将居左显示
         *
         * @desc 2.6.6
         */
        titleIcon?: string;
        /**
         * 标题图标圆角，单位为 px
         *
         * @default "0px"
         */
        titleIconRadius?: PxSize;
        [x: string]: any;
    };
    /**
     * 原生子窗体，详见 [原生子窗体](https://uniapp.dcloud.net.cn/collocation/pages#app-subNVues)
     *
     * @desc App 1.9.10+
     */
    subNVues?: {
        /**
         * 原生子窗体的标识
         */
        id?: string;
        /**
         * 配置 nvue 文件路径，nvue 文件需放置到使用 subNVue 的页面文件目录下，cli 项目需要去掉 .nvue 后缀，只保留文件名
         */
        path?: string;
        /**
         * 原生子窗口内置样式
         *
         * "popup" 弹出层
         *
         * "navigationBar" 导航栏
         */
        type?: string;
        /**
         * 原生子窗体的样式
         */
        style?: {
            /**
             * 原生子窗体的排版位置，排版位置决定原生子窗体在父窗口中的定位方式
             *
             * "static" 原生子窗体在页面中正常定位，如果页面存在滚动条则随窗口内容滚动
             *
             * "absolute" 原生子窗体在页面中绝对定位，如果页面存在滚动条不随窗口内容滚动
             *
             * "dock" 原生子窗体在页面中停靠，停靠位置由 dock 属性值决定
             *
             * @default "absolute"
             */
            position?: 'static' | 'absolute' | 'dock';
            /**
             * 原生子窗体停靠位置，仅 position 为 "dock" 时生效
             *
             * "top" 原生子窗体停靠在页面顶部
             *
             * "bottom" 原生子窗体停靠在页面底部
             *
             * "right" 原生子窗体停靠在页面右侧
             *
             * "left" 原生子窗体停靠在页面左侧
             *
             * @default "bottom"
             */
            dock?: 'top' | 'bottom' | 'right' | 'left';
            /**
             * 原生子窗体的遮罩层，仅当原生子窗体 type 为 "popup" 时生效，支持 RGBA 颜色
             *
             * @default "rgba(0,0,0,0.5)"
             *
             * @format color
             */
            mask?: RGBAColor;
            /**
             * 原生子窗体的宽度，支持以 px 为单位的逻辑像素值或百分比
             *
             * 未设置时，可同时设置 left 和 right 属性值改变窗口的默认宽度
             *
             * @default "100%"
             */
            width?: PxSize | PercentageSize;
            /**
             * 原生子窗体的高度，支持以 px 为单位的逻辑像素值或百分比
             *
             * 未设置时，可同时设置 top 和 bottom 属性值改变窗口的默认高度
             *
             * @default "100%"
             */
            height?: PxSize | PercentageSize;
            /**
             * 原生子窗体垂直向下的偏移量，支持以 px 为单位的逻辑像素值或百分比
             *
             * 未设置 top 属性值时，优先通过 bottom 和 height 属性值来计算原生子窗体的 top 位置
             *
             * @default "0px"
             */
            top?: PxSize | PercentageSize;
            /**
             * 原生子窗体垂直向上的偏移量，支持以 px 为单位的逻辑像素值或百分比
             *
             * 同时设置了 top 和 height 值时，忽略此属性值
             *
             * 未设置 height 时，通过 top 和 bottom 属性值来确定原生子窗体的高度
             *
             * @default 根据 top 和 height 属性值自动计算
             */
            bottom?: PxSize | PercentageSize;
            /**
             * 原生子窗体水平向左的偏移量，支持以 px 为单位的逻辑像素值或百分比
             *
             * 未设置 left 属性值时，优先通过 right 和 width 属性值来计算原生子窗体的 left 位置
             *
             * @default "0px"
             */
            left?: PxSize | PercentageSize;
            /**
             * 原生子窗体水平向右的偏移量，支持以 px 为单位的逻辑像素值或百分比
             *
             * 同时设置了 left 和 height 值时，忽略此属性值
             *
             * 未设置 width 时，通过 left 和 bottom 属性值来确定原生子窗体的宽度
             *
             * @default 根据 left 和 width 属性值来自动计算
             */
            right?: PxSize | PercentageSize;
            /**
             * 原生子窗体的边距，用于定位原生子窗体的位置，若设置了 left、right、top、bottom 则对应的边距值失效
             *
             * "auto" 居中
             */
            margin?: string;
            /**
             * 原生子窗体的窗口的堆叠顺序值，拥有更高堆叠顺序的窗口总是会处于堆叠顺序较低的窗口的前面，拥有相同堆叠顺序的窗口后调用 show 方法则在前面
             */
            zindex?: number;
            /**
             * 窗口的背景颜色，支持 Hex 颜色
             *
             * Android 平台 4.0 以上系统支持 "transparent" 背景透明样式，比如 subNVue 为圆角时需要设置为 "transparent" 才能看到正确的效果
             *
             * @default "#FFFFFF"
             *
             * @format color
             */
            background?: HEXColor | 'transparent';
            [x: string]: any;
        };
        [x: string]: any;
    }[];
    /**
     * 页面回弹效果，设置为 "none" 时关闭效果
     *
     * @desc App-vue（nvue Android 无页面级bounce效果，仅 list、recycle-list、waterfall 等滚动组件有 bounce 效果）
     */
    bounce?: string;
    /**
     * 侧滑返回功能，仅支持 "close" / "none"
     *
     * "close" 启用侧滑返回
     *
     * "none" 禁用侧滑返回
     *
     * @default "close"
     *
     * @desc App-iOS
     */
    popGesture?: 'close' | 'none';
    /**
     * iOS 软键盘上完成工具栏的显示模式，设置为 "none" 时关闭工具栏
     *
     * @default "auto"
     *
     * @desc App-iOS
     */
    softInputNavBar?: 'auto' | 'none';
    /**
     * 软键盘弹出模式，仅支持 "adjustResize" / "adjustPan"
     *
     * @default "adjustPan"
     *
     * @desc App
     */
    softInputMode?: 'adjustResize' | 'adjustPan';
    /**
     * 下拉刷新
     *
     * @desc App
     */
    pullToRefresh?: {
        /**
         * 是否开启窗口下拉刷新
         *
         * @default false
         */
        support?: boolean;
        /**
         * 下拉刷新控件颜色，仅 style 为 "circle" 时有效，支持 HEX 颜色
         *
         * @default "#2BD009"
         *
         * @format color
         */
        color?: HEXColor;
        /**
         * 下拉刷新控件样式
         *
         * "default" 下拉拖动时页面内容跟随
         *
         * "circle" 下拉拖动时仅刷新控件跟随
         *
         * @default Android 为 "circle"，iOS 为 "default"
         */
        style?: 'default' | 'circle';
        /**
         * 下拉刷新控件进入刷新状态的拉拽高度，支持以 px 为单位的逻辑像素值或百分比
         */
        height?: PxSize | PercentageSize;
        /**
         * 窗口可下拉拖拽的范围，支持以 px 为单位的逻辑像素值或百分比
         */
        range?: PxSize | PercentageSize;
        /**
         * 下拉刷新控件的起始位置，仅 style 为 "circle" 时有效，用于定义刷新控件下拉时的起始位置，支持以 px 为单位的逻辑像素值或百分比
         *
         * 如使用了非原生 title 且需要原生下拉刷新，一般都设置 style 为 "circle" 并将 offset 设置为自定义 title 的高度
         */
        offset?: PxSize | PercentageSize;
        /**
         * 下拉可刷新状态时配置，仅 style 为 "default" 时有效
         */
        contentdown?: {
            /**
             * 下拉可刷新状态时下拉刷新控件标题内容
             */
            caption?: string;
            [x: string]: any;
        };
        /**
         * 释放可刷新状态时配置，仅 style 为 "default" 时有效
         */
        contentover?: {
            /**
             * 释放可刷新状态时下拉刷新控件标题内容
             */
            caption?: string;
            [x: string]: any;
        };
        /**
         * 正在刷新状态时配置，仅 style 为 "default" 时有效
         */
        contentrefresh?: {
            /**
             * 正在刷新状态时下拉刷新控件标题内容
             */
            caption?: string;
            [x: string]: any;
        };
        [x: string]: any;
    };
    /**
     * 滚动条显示策略，设置为 "none" 时不显示滚动条
     *
     * @desc App
     */
    scrollIndicator?: string;
    /**
     * 窗口显示的动画效果，详见 [窗口动画](https://uniapp.dcloud.net.cn/api/router#animation)
     *
     * @default "pop-in"
     *
     * @desc App
     */
    animationType?: AnimationType;
    /**
     * 窗口显示动画的持续时间，单位为 ms
     *
     * @default 300
     *
     * @desc App
     */
    animationDuration?: number;
    [x: string]: any;
}

/**
 * 设置编译到 mp-alipay 平台的特定样式，配置项参考 [MP-ALIPAY](https://uniapp.dcloud.net.cn/collocation/pages#mp-alipay) 和 <https://opendocs.alipay.com/mini/framework/app-json#window>
 *
 * 相应的类型是 MpAlipay
 *
 * @desc 支付宝小程序
 */
interface MpAlipay {
    /**
     * 是否允许向下拉拽
     *
     * @default "YES"
     */
    allowsBounceVertical?: 'YES' | 'NO';
    /**
     * 窗口的背景色，支持 HEX 颜色
     *
     * @format color
     */
    backgroundColor?: HEXColor | ThemeVar;
    /**
     * 下拉露出显示背景图的底色，仅 Android 有效，iOS 下页面背景图底色会使用 backgroundColor 的值
     *
     * @format color
     */
    backgroundImageColor?: HEXColor;
    /**
     * 下拉露出显示背景图的链接，支持网络地址和本地地址，尽量使用绝对地址
     */
    backgroundImageUrl?: string;
    /**
     * 页面默认标题
     */
    defaultTitle?: string;
    /**
     * 仅支持 Android，是否显示 WebView 滚动条
     *
     * @default "YES"
     */
    enableScrollBar?: 'YES' | 'NO';
    /**
     * 仅支持 iOS，是否支持手势返回
     *
     * @default "YES"
     */
    gestureBack?: 'YES' | 'NO';
    /**
     * 页面上拉触底时触发时距离页面底部的距离，单位为 px，详情可查看 [页面事件处理函数](https://opendocs.alipay.com/mini/framework/page-detail#%E9%A1%B5%E9%9D%A2%E4%BA%8B%E4%BB%B6%E5%A4%84%E7%90%86%E5%87%BD%E6%95%B0)
     *
     * @desc [1.19.0](https://opendocs.alipay.com/mini/framework/compatibility)，目前 iOS 在 page.json 下设置无效，只能全局设置
     */
    onReachBottomDistance?: number;
    /**
     * 是否允许下拉刷新，allowsBounceVertical 值需要为 "YES"，全局配置后全局生效，但是如果单个页面配置了该参数，以页面的配置为准
     *
     * @default false
     */
    pullRefresh?: boolean;
    /**
     * rpx 单位是否宽度自适应
     *
     * 当设置为 false 时，2 rpx 将恒等于 1 px，不再根据屏幕宽度进行自适应，此时 750 rpx 将不再等于 100% 宽度
     *
     * @desc [1.23.0](https://opendocs.alipay.com/mini/framework/compatibility)
     *
     * @default true
     */
    responsive?: boolean;
    /**
     * 是否进入时显示导航栏的 loading
     *
     * @default "NO"
     */
    showTitleLoading?: 'YES' | 'NO';
    /**
     * 导航栏透明设置
     *
     * always 一直透明
     *
     * auto 滑动自适应
     *
     * none 不透明
     *
     * @default "none"
     */
    transparentTitle?: 'always' | 'auto' | 'none';
    /**
     * 导航栏点击穿透
     *
     * @default "NO"
     */
    titlePenetrate?: 'YES' | 'NO';
    /**
     * 导航栏图片地址，会替换当前文字标题，只支持 https 图片链接
     */
    titleImage?: string;
    /**
     * 导航栏背景色，支持 HEX 颜色
     */
    titleBarColor?: HEXColor;
    /**
     * 导航栏前景色
     *
     * @desc [支付宝客户端 10.5.30](https://opendocs.alipay.com/mini/framework/compatibility)
     */
    navigationBarFrontColor?: 'black' | 'white';
    [x: string]: any;
}

/**
 * 设置编译到 mp-weixin 平台的特定样式，配置项参考 [MP-WEIXIN](https://uniapp.dcloud.net.cn/collocation/pages#mp-weixin) 和 <https://developers.weixin.qq.com/miniprogram/dev/reference/configuration/app.html#window>
 *
 * 相应的类型是 MpWeixin
 *
 * @desc 微信小程序
 */
interface MpWeixin {
    /**
     * 导航栏背景颜色，支持 HEX 颜色
     *
     * @default "#000000"
     *
     * @format color
     */
    navigationBarBackgroundColor?: HEXColor | ThemeVar;
    /**
     * 导航栏标题、状态栏颜色
     *
     * @default "white"
     */
    navigationBarTextStyle?: 'black' | 'white' | ThemeVar;
    /**
     * 导航栏标题文字内容
     */
    navigationBarTitleText?: string;
    /**
     * 导航栏样式
     *
     * "default" 默认样式
     *
     * "custom" 自定义导航栏，只保留右上角胶囊按钮
     *
     * @desc iOS / Android 微信客户端 6.6.0，Windows 微信客户端不支持
     *
     * @default "default"
     */
    navigationStyle?: 'default' | 'custom';
    /**
     * 在非首页、非页面栈最底层页面或非 tabbar 内页面中的导航栏展示 home 键
     *
     * @desc 微信客户端 8.0.24
     *
     * @default false
     */
    homeButton?: boolean;
    /**
     * 窗口的背景色，支持 HEX 颜色
     *
     * @default "#FFFFFF"
     */
    backgroundColor?: HEXColor | ThemeVar;
    /**
     * 下拉 loading 的样式，仅支持 "dark" / "light"
     *
     * @default "dark"
     */
    backgroundTextStyle?: 'dark' | 'light' | ThemeVar;
    /**
     * 顶部窗口的背景色，仅 iOS 支持
     *
     * @desc 微信客户端 6.5.16
     *
     * @default "#FFFFFF"
     */
    backgroundColorTop?: HEXColor | ThemeVar;
    /**
     * 底部窗口的背景色，仅 iOS 支持
     *
     * @desc 微信客户端 6.5.16
     *
     * @default "#FFFFFF"
     */
    backgroundColorBottom?: HEXColor | ThemeVar;
    /**
     * 是否开启全局的下拉刷新，详见 [Page.onPullDownRefresh](https://developers.weixin.qq.com/miniprogram/dev/reference/api/Page.html#onpulldownrefresh)
     *
     * @default false
     */
    enablePullDownRefresh?: boolean;
    /**
     * 页面上拉触底事件触发时距页面底部距离，单位为 px，详见 [Page.onReachBottom](https://developers.weixin.qq.com/miniprogram/dev/reference/api/Page.html#onreachbottom)
     *
     * @default 50
     */
    onReachBottomDistance?: number;
    /**
     * 屏幕旋转设置，支持 auto / portrait / landscape，详见 [响应显示区域变化](https://developers.weixin.qq.com/miniprogram/dev/framework/view/resizable.html)
     *
     * "auto" 自动
     *
     * "portrait" 竖屏
     *
     * "landscape" 横屏
     *
     * @desc [2.4.0](https://developers.weixin.qq.com/miniprogram/dev/framework/compatibility.html) (auto) / [2.5.0](https://developers.weixin.qq.com/miniprogram/dev/framework/compatibility.html) (landscape)
     *
     * @default "portrait"
     */
    pageOrientation?: 'auto' | 'portrait' | 'landscape';
    /**
     * 重新启动策略配置
     *
     * "homePage" 如果从这个页面退出小程序，下次将从首页冷启动
     *
     * "homePageAndLatestPage" 如果从这个页面退出小程序，下次冷启动后立刻加载这个页面，页面的参数保持不变（不可用于 tab 页）
     *
     * @desc [2.8.0](https://developers.weixin.qq.com/miniprogram/dev/framework/compatibility.html)
     */
    restartStrategy?: 'homePage' | 'homePageAndLatestPage';
    /**
     * 页面初始渲染缓存配置，详见 [初始渲染缓存](https://developers.weixin.qq.com/miniprogram/dev/framework/view/initial-rendering-cache.html)
     *
     * @desc [2.11.1](https://developers.weixin.qq.com/miniprogram/dev/framework/compatibility.html)
     */
    initialRenderingCache?: 'static' | 'dynamic';
    /**
     * 切入系统后台时，隐藏页面内容，保护用户隐私
     *
     * @desc [2.15.0](https://developers.weixin.qq.com/miniprogram/dev/framework/compatibility.html)
     *
     * @default "none"
     */
    visualEffectInBackground?: 'hidden' | 'none';
    /**
     * 控制预加载下个页面的时机，详见 [控制预加载下个页面的时机](https://developers.weixin.qq.com/miniprogram/dev/framework/performance/tips/runtime_nav.html#_2-4-%E6%8E%A7%E5%88%B6%E9%A2%84%E5%8A%A0%E8%BD%BD%E4%B8%8B%E4%B8%AA%E9%A1%B5%E9%9D%A2%E7%9A%84%E6%97%B6%E6%9C%BA)
     *
     * "static" 在当前页面 onReady 触发 200ms 后触发预加载
     *
     * "auto" 渲染线程空闲时进行预加载，由基础库根据一段时间内 requestAnimationFrame 的触发频率算法判断
     *
     * "manual" 由开发者通过调用 [wx.preloadWebview](https://developers.weixin.qq.com/miniprogram/dev/api/base/performance/wx.preloadWebview.html) 触发，开发者可以在页面主要内容的 setData 结束后手动触发
     *
     * @desc [2.15.0](https://developers.weixin.qq.com/miniprogram/dev/framework/compatibility.html)
     *
     * @default "static"
     */
    handleWebviewPreload?: 'static' | 'manual' | 'auto';
    [x: string]: any;
}

/**
 * 设置编译到 mp-baidu 平台的特定样式，配置项参考 [MP-BAIDU](https://uniapp.dcloud.net.cn/collocation/pages.html#mp-baidu) 和 <https://smartprogram.baidu.com/docs/develop/framework/process/#window>
 *
 * 相应的类型是 MpBaidu
 *
 * @desc 百度小程序
 */
interface MpBaidu {
    /**
     * 导航栏背景颜色，支持 HEX 颜色
     *
     * @default "#000000"
     *
     * @format color
     */
    navigationBarBackgroundColor?: HEXColor | ThemeVar;
    /**
     * 导航栏标题、状态栏颜色
     *
     * @default "white"
     */
    navigationBarTextStyle?: 'black' | 'white' | ThemeVar;
    /**
     * 导航栏标题文字内容
     */
    navigationBarTitleText?: string;
    /**
     * 导航栏样式
     *
     * "default" 默认样式
     *
     * "custom" 自定义导航栏，只保留右上角胶囊按钮
     *
     * @desc 2.10.34
     *
     * @default "default"
     */
    navigationStyle?: 'default' | 'custom';
    /**
     * 窗口的背景色，支持 HEX 颜色
     *
     * @default "#FFFFFF"
     */
    backgroundColor?: HEXColor | ThemeVar;
    /**
     * 下拉 loading 的样式，仅支持 "dark" / "light"
     *
     * @default "dark"
     */
    backgroundTextStyle?: 'dark' | 'light' | ThemeVar;
    /**
     * 顶部窗口的背景色，仅 iOS 支持
     *
     * @default "#FFFFFF"
     */
    backgroundColorTop?: HEXColor | ThemeVar;
    /**
     * 底部窗口的背景色，仅 iOS 支持
     *
     * @default "#FFFFFF"
     */
    backgroundColorBottom?: HEXColor | ThemeVar;
    /**
     * 是否开启全局的下拉刷新
     *
     * @default false
     */
    enablePullDownRefresh?: boolean;
    /**
     * 页面上拉触底事件触发时距页面底部距离，单位为 px
     *
     * @default 50
     */
    onReachBottomDistance?: number;
    /**
     * 小程序页面是否禁止响应字体大小的设置
     *
     * "auto" 默认响应
     *
     * "none" 不响应
     *
     * @desc 基础库版本 3.200.1
     *
     * @default "auto"
     */
    textSizeAdjust?: 'auto' | 'none';
    /**
     * 屏幕旋转设置，支持 auto / portrait / landscape
     *
     * "auto" 自动
     *
     * "portrait" 竖屏
     *
     * "landscape" 横屏
     *
     * @desc 基础库版本 3.450.8，web 化暂不支持
     *
     * @default "portrait"
     */
    pageOrientation?: 'auto' | 'portrait' | 'landscape';
    [x: string]: any;
}

/**
 * 设置编译到 mp-toutiao 平台的特定样式，配置项参考 <https://developer.open-douyin.com/docs/resource/zh-CN/mini-app/develop/framework/general-configuration#window>
 *
 * 相应的类型是 MpToutiao
 *
 * @desc 抖音小程序
 */
interface MpToutiao {
    /**
     * 导航栏背景颜色，支持 HEX 颜色
     *
     * @default "#000000"
     *
     * @format color
     */
    navigationBarBackgroundColor?: HEXColor | ThemeVar;
    /**
     * 导航栏标题颜色，同时影响标题颜色、右胶囊颜色、左返回箭头颜色
     *
     * @default "white"
     */
    navigationBarTextStyle?: 'black' | 'white' | ThemeVar;
    /**
     * 导航栏标题文字内容
     */
    navigationBarTitleText?: string;
    /**
     * 导航栏样式
     *
     * "default" 默认样式
     *
     * "custom" 自定义导航栏，只保留右上角胶囊按钮
     *
     * @default "default"
     */
    navigationStyle?: 'default' | 'custom';
    /**
     * 窗口的背景色，支持 HEX 颜色
     *
     * @default "#FFFFFF"
     */
    backgroundColor?: HEXColor | ThemeVar;
    /**
     * 下拉 loading 的样式，仅支持 "dark" / "light"
     *
     * @default "dark"
     */
    backgroundTextStyle?: 'dark' | 'light' | ThemeVar;
    /**
     * 顶部窗口的背景色，仅 iOS 支持
     *
     * @default 同 backgroundColor
     */
    backgroundColorTop?: HEXColor | ThemeVar;
    /**
     * 底部窗口的背景色，仅 iOS 支持
     *
     * @default 同 backgroundColor
     */
    backgroundColorBottom?: HEXColor | ThemeVar;
    /**
     * 是否开启全局的下拉刷新
     *
     * @default false
     */
    enablePullDownRefresh?: boolean;
    /**
     * 页面上拉触底事件触发时距页面底部距离，单位为 px
     *
     * @default 50
     */
    onReachBottomDistance?: number;
    /**
     * 仅在 navigationStyle 为 "default" 时生效，用来控制导航栏透明设置
     *
     * "always" 一直透明
     *
     * "auto" 滑动自适应
     *
     * "none" 不透明
     *
     * @default "none"
     */
    transparentTitle?: 'always' | 'auto' | 'none';
    /**
     * 框架骨架屏配置，仅支持配置 config 属性，优先级高于 app.json，详见 [小程序框架骨架屏](https://developer.open-douyin.com/docs/resource/zh-CN/mini-app/develop/guide/experience-optimization/list/skeleton)
     *
     * @desc 2.47.0
     */
    skeleton?: {
        /**
         * 包含超时移除及自动生成配置等
         */
        config?: {
            /**
             * 设置骨架屏超时移除时间，单位为 ms，为 0 时关闭超时移除
             *
             * @default 2000
             */
            timeout?: number;
            /**
             * 骨架屏显示时的动画
             *
             * @default 'spin'
             */
            loading?: 'spin' | 'chiaroscuro' | 'shine';
            /**
             * 骨架页面中图片块配置
             *
             * @default { shape: 'rect', color: '#efefef' }
             */
            image?: {
                /**
                 * 骨架页面中图片块形状
                 *
                 * circle 圆形
                 *
                 * rect 矩形
                 *
                 * @default "rect"
                 */
                shape?: 'circle' | 'rect';
                /**
                 * 骨架页面中图片块颜色，支持 HEX 颜色
                 *
                 * @default "#efefef"
                 *
                 * @format color
                 */
                color?: HEXColor;
                [x: string]: any;
            };
            /**
             * 骨架页面中被视为按钮块的配置
             *
             * @default { color: '#efefef }
             */
            button?: {
                /**
                 * 骨架页面中被视为按钮块的颜色，支持 HEX 颜色
                 *
                 * @default "#efefef"
                 *
                 * @format color
                 */
                color?: HEXColor;
                [x: string]: any;
            };
            /**
             * 骨架屏背景色，支持 HEX 颜色
             *
             * @default "#fff"
             *
             * @format color
             */
            backgroundColor?: HEXColor;
            /**
             * 默认为使用绝对定位占满全屏
             *
             * 当对自定义组件使用，作为局部加载的样式时，可设置为 "auto"，高度随内容高度撑开
             *
             * @default "fullscreen"
             */
            mode?: 'fullscreen' | 'auto';
            /**
             * CSS单位，元素绝对定位都使用 "vw" 与 "vh"
             *
             * @default "vw"
             */
            cssUnit?: 'px' | 'rem' | 'vw' | 'vh' | 'vmin' | 'vmax';
            /**
             * 生成骨架屏页面中 css 值保留的小数点位数，默认为 4
             *
             * @default 4
             */
            decimal?: number;
            [x: string]: any;
        };
        /**
         * 页面路径同骨架屏文件的对应关系
         */
        page?: Record<string, string>;
        [x: string]: any;
    };
    [x: string]: any;
}

/**
 * 设置编译到 mp-lark 平台的特定样式，配置项参考 <https://open.feishu.cn/document/client-docs/gadget/introduction/global-settings#a172b7dd>
 *
 * 相应的类型是 MpLark
 *
 * @desc 飞书小程序
 */
interface MpLark {
    /**
     * 导航栏背景颜色，支持 HEX 颜色
     *
     * @desc iOS, Android
     *
     * @default "#000000"
     *
     * @format color
     */
    navigationBarBackgroundColor?: HEXColor | ThemeVar;
    /**
     * 导航栏标题、状态栏颜色
     *
     * @desc iOS, Android
     *
     * @default "white"
     */
    navigationBarTextStyle?: 'black' | 'white' | ThemeVar;
    /**
     * 导航栏标题文字内容
     *
     * @desc iOS, Android, PC
     */
    navigationBarTitleText?: string;
    /**
     * 导航栏透明设置
     *
     * "always" 一直透明
     *
     * "auto" 滑动自适应
     *
     * "none" 不透明
     *
     * @desc iOS, Android
     *
     * @default "none"
     */
    transparentTitle?: 'always' | 'auto' | 'none';
    /**
     * 导航栏样式
     *
     * "default" 默认样式
     *
     * "custom" 自定义导航栏，只保留右上角胶囊按钮
     *
     * @desc iOS, Android, PC
     *
     * @default "default"
     */
    navigationStyle?: 'default' | 'custom';
    /**
     * 窗口的背景色，支持 HEX 颜色
     *
     * @desc iOS, Android, PC(3.14.0+)
     *
     * @default "#FFFFFF"
     */
    backgroundColor?: HEXColor | ThemeVar;
    /**
     * 下拉 loading 的样式，仅支持 "dark" / "light"
     *
     * @desc iOS, Android
     *
     * @default "dark"
     */
    backgroundTextStyle?: 'dark' | 'light' | ThemeVar;
    /**
     * 顶部窗口的背景色
     *
     * @desc iOS
     *
     * @default "#FFFFFF"
     */
    backgroundColorTop?: HEXColor | ThemeVar;
    /**
     * 底部窗口的背景色
     *
     * @desc iOS
     *
     * @default "#FFFFFF"
     */
    backgroundColorBottom?: HEXColor | ThemeVar;
    /**
     * 是否开启全局的下拉刷新
     *
     * @desc iOS, Android
     *
     * @default false
     */
    enablePullDownRefresh?: boolean;
    /**
     * 页面上拉触底事件触发时距页面底部距离，单位为 px
     *
     * @desc iOS, Android
     *
     * @default 50
     */
    onReachBottomDistance?: number;
    /**
     * PCMode 模式下特定的窗口配置，支持的属性与通用 window 配置属性一致，仅当在 ext 内配置了 defaultPages.PCMode 时生效
     */
    PCMode?: Omit<MpLark, 'PCMode'>;
    [x: string]: any;
}

/**
 * 设置编译到 mp-qq 平台的特定样式，配置项参考 <https://q.qq.com/wiki/develop/miniprogram/frame/dispose.html#window>
 *
 * 相应的类型是 MpQq
 *
 * @desc QQ 小程序
 */
interface MpQq {
    /**
     * 导航栏背景颜色，支持 HEX 颜色
     *
     * @default "#000000"
     *
     * @format color
     */
    navigationBarBackgroundColor?: HEXColor | ThemeVar;
    /**
     * 导航栏标题、状态栏颜色
     *
     * @default "white"
     */
    navigationBarTextStyle?: 'black' | 'white' | ThemeVar;
    /**
     * 导航栏标题文字内容
     */
    navigationBarTitleText?: string;
    /**
     * 导航栏样式
     *
     * "default" 默认样式
     *
     * "custom" 自定义导航栏，只保留右上角胶囊按钮
     *
     * @default "default"
     */
    navigationStyle?: 'default' | 'custom';
    /**
     * 窗口的背景色，支持 HEX 颜色
     *
     * @default "#FFFFFF"
     */
    backgroundColor?: HEXColor | ThemeVar;
    /**
     * 下拉 loading 的样式，仅支持 "dark" / "light"
     *
     * @default "dark"
     */
    backgroundTextStyle?: 'dark' | 'light' | ThemeVar;
    /**
     * 顶部窗口的背景色，仅 iOS 支持
     *
     * @default "#FFFFFF"
     */
    backgroundColorTop?: HEXColor | ThemeVar;
    /**
     * 底部窗口的背景色，仅 iOS 支持
     *
     * @default "#FFFFFF"
     */
    backgroundColorBottom?: HEXColor | ThemeVar;
    /**
     * 是否开启全局的下拉刷新，详见 [Page.onPullDownRefresh](https://q.qq.com/wiki/develop/miniprogram/frame/logic/logic_register_page.html#onPullDownRefresh)
     *
     * @default false
     */
    enablePullDownRefresh?: boolean;
    /**
     * 屏幕旋转设置，支持 auto / portrait / landscape，详见 [响应显示区域变化](https://q.qq.com/wiki/develop/miniprogram/frame/view/view_section_change.html)
     *
     * "auto" 自动
     *
     * "portrait" 竖屏
     *
     * "landscape" 横屏
     *
     * @default "portrait"
     */
    pageOrientation?: 'auto' | 'portrait' | 'landscape';
    [x: string]: any;
}

/**
 * 设置编译到 mp-kuaishou 平台的特定样式，配置项参考 <https://mp.kuaishou.com/docs/develop/frame/config/conf_appjson.html#window>
 *
 * 相应的类型是 MpKuaishou
 *
 * @desc 快手小程序
 */
interface MpKuaishou {
    /**
     * 导航栏背景颜色，支持 HEX 颜色
     *
     * @default "#000000"
     *
     * @format color
     */
    navigationBarBackgroundColor?: HEXColor | ThemeVar;
    /**
     * 导航栏标题、状态栏颜色
     *
     * @default "white"
     */
    navigationBarTextStyle?: 'black' | 'white' | ThemeVar;
    /**
     * 导航栏标题文字内容
     */
    navigationBarTitleText?: string;
    /**
     * 导航栏样式
     *
     * "default" 默认样式
     *
     * "custom" 自定义导航栏，只保留右上角胶囊按钮
     *
     * @default "default"
     */
    navigationStyle?: 'default' | 'custom';
    /**
     * 窗口的背景色，支持 HEX 颜色
     *
     * @default "#FFFFFF"
     */
    backgroundColor?: HEXColor | ThemeVar;
    /**
     * 下拉 loading 的样式，仅支持 "dark" / "light"
     *
     * @default "dark"
     */
    backgroundTextStyle?: 'dark' | 'light' | ThemeVar;
    /**
     * 顶部窗口的背景色，仅 iOS 支持
     *
     * @default "#FFFFFF"
     */
    backgroundColorTop?: HEXColor | ThemeVar;
    /**
     * 底部窗口的背景色，仅 iOS 支持
     *
     * @default "#FFFFFF"
     */
    backgroundColorBottom?: HEXColor | ThemeVar;
    /**
     * 是否开启全局的下拉刷新，详见 [Page.onPullDownRefresh](https://mp.kuaishou.com/docs/develop/frame/page/page_page.html#onpulldownrefresh)
     *
     * @default false
     */
    enablePullDownRefresh?: boolean;
    /**
     * 页面上拉触底事件触发时距页面底部距离，单位为 px，详见 [Page.onReachBottom](https://mp.kuaishou.com/docs/develop/frame/page/page_page.html#onreachbottom)
     *
     * @default 50
     */
    onReachBottomDistance?: number;
    /**
     * 屏幕旋转设置，支持 auto / portrait / landscape，详见 [响应显示区域变化](https://developers.weixin.qq.com/miniprogram/dev/framework/view/resizable.html)
     *
     * "auto" 自动
     *
     * "portrait" 竖屏
     *
     * "landscape" 横屏
     *
     * @default "portrait"
     */
    pageOrientation?: 'auto' | 'portrait' | 'landscape';
    [x: string]: any;
}

/**
 * 设置编译到 mp-jd 平台的特定样式，配置项参考 <https://mp-docs.jd.com/doc/dev/framework/504#heading-3>
 *
 * 相应的类型是 MpJd
 *
 * @desc 京东小程序
 */
interface MpJd {
    /**
     * 导航栏背景颜色，支持 HEX 颜色
     *
     * @default "#000000"
     *
     * @format color
     */
    navigationBarBackgroundColor?: HEXColor | ThemeVar;
    /**
     * 导航栏标题、状态栏颜色
     *
     * @default "white"
     */
    navigationBarTextStyle?: 'black' | 'white' | ThemeVar;
    /**
     * 导航栏标题文字内容
     */
    navigationBarTitleText?: string;
    /**
     * 导航栏样式
     *
     * "default" 默认样式
     *
     * "custom" 自定义导航栏，只保留右上角胶囊按钮
     *
     * @default "default"
     */
    navigationStyle?: 'default' | 'custom';
    /**
     * 下拉窗口的背景色，不是页面的背景颜色
     *
     * @default "#FFFFFF"
     */
    backgroundColor?: HEXColor | ThemeVar;
    /**
     * 下拉 loading 的样式，仅支持 "dark" / "light"
     *
     * @default "dark"
     */
    backgroundTextStyle?: 'dark' | 'light' | ThemeVar;
    /**
     * 顶部窗口的背景色，仅 iOS 支持
     *
     * @default "#FFFFFF"
     */
    backgroundColorTop?: HEXColor | ThemeVar;
    /**
     * 底部窗口的背景色，仅 iOS 支持
     *
     * @default "#FFFFFF"
     */
    backgroundColorBottom?: HEXColor | ThemeVar;
    /**
     * 是否开启全局的下拉刷新，详见 [Page.onPullDownRefresh](https://mp-docs.jd.com/doc/dev/framework/520#heading-10)
     *
     * @default false
     */
    enablePullDownRefresh?: boolean;
    [x: string]: any;
}

interface GlobalStyle {
    /**
     * 导航栏背景颜色（同状态栏背景色），支持 HEX 颜色
     *
     * @desc APP 与 H5 为 #F8F8F8，小程序平台请参考相应小程序文档
     *
     * @format color
     */
    'navigationBarBackgroundColor'?: HEXColor | ThemeVar;
    /**
     * 导航栏标题颜色及状态栏前景颜色，仅支持 "black" / "white"
     *
     * @default "black"
     *
     * @desc 支付宝小程序不支持，请使用 my.setNavigationBar
     */
    'navigationBarTextStyle'?: 'black' | 'white' | ThemeVar;
    /**
     * 导航栏标题文字内容
     */
    'navigationBarTitleText'?: string;
    /**
     * 导航栏阴影
     */
    'navigationBarShadow'?: {
        /**
         * 阴影颜色
         */
        colorType?: 'grey' | 'blue' | 'green' | 'orange' | 'red' | 'yellow';
    };
    /**
     * 导航栏样式，仅支持 "default" / "custom"
     *
     * "custom" 即取消默认的原生导航栏，详看 [使用注意](https://uniapp.dcloud.net.cn/collocation/pages#customnav)
     *
     * @default "default"
     *
     * @desc 微信小程序 7.0+、百度小程序、H5、App（2.0.3+）
     */
    'navigationStyle'?: 'default' | 'custom';
    /**
     * 下拉显示出来的窗口的背景色，支持 HEX 颜色
     *
     * @default "#ffffff"
     *
     * @desc 微信小程序
     *
     * @format color
     */
    'backgroundColor'?: HEXColor | ThemeVar;
    /**
     * 下拉 loading 的样式，仅支持 "dark" / "light"
     *
     * @default "dark"
     *
     * @desc 微信小程序
     */
    'backgroundTextStyle'?: 'dark' | 'light' | ThemeVar;
    /**
     * 是否开启下拉刷新，详见 [页面生命周期](https://uniapp.dcloud.net.cn/tutorial/page.html#lifecycle)
     *
     * @default false
     */
    'enablePullDownRefresh'?: boolean;
    /**
     * 页面上拉触底事件触发时距页面底部距离，单位为 px，详见 [页面生命周期](https://uniapp.dcloud.net.cn/tutorial/page.html#lifecycle)
     *
     * @default 50
     */
    'onReachBottomDistance'?: number;
    /**
     * 顶部窗口的背景色（bounce回弹区域）
     *
     * @default "#ffffff"
     *
     * @desc iOS
     *
     * @format color
     */
    'backgroundColorTop'?: HEXColor | ThemeVar;
    /**
     * 底部窗口的背景色（bounce回弹区域）
     *
     * @default "#ffffff"
     *
     * @desc iOS
     *
     * @format color
     */
    'backgroundColorBottom'?: HEXColor | ThemeVar;
    /**
     * 导航栏图片地址（替换当前文字标题）
     *
     * 支付宝小程序内必须使用 https 图片链接地址
     *
     * @desc 支付宝小程序、H5、APP
     */
    'titleImage'?: string;
    /**
     * 导航栏整体（前景、背景）透明设置，仅支持 "always" / "auto" / "none
     *
     * "always" 一直透明
     *
     * "auto" 滑动自适应
     *
     * "none" 不透明
     *
     * @default "none"
     *
     * @desc 支付宝小程序、H5、APP
     */
    'transparentTitle'?: 'always' | 'auto' | 'none';
    /**
     * 导航栏点击穿透
     *
     * @default "NO"
     *
     * @desc 支付宝小程序、H5
     */
    'titlePenetrate'?: 'YES' | 'NO';
    /**
     * 横屏配置，屏幕旋转设置，仅支持 "auto" / "portrait" / "landscape"，详见 [响应显示区域变化](https://developers.weixin.qq.com/miniprogram/dev/framework/view/resizable.html)
     *
     * "auto" 自动
     *
     * "portrait" 竖屏
     *
     * "landscape" 横屏
     *
     * @default "portrait"
     *
     * @desc App 2.4.7+、微信小程序、QQ小程序
     */
    'pageOrientation'?: string;
    /**
     * 窗口显示的动画效果，详见 [窗口动画](https://uniapp.dcloud.net.cn/api/router#animation)
     *
     * @default "pop-in"
     *
     * @desc App
     */
    'animationType'?: AnimationType;
    /**
     * 窗口显示动画的持续时间，单位为 ms
     *
     * @default 300
     *
     * @desc App
     */
    'animationDuration'?: number;
    /**
     * 设置编译到 App 平台的特定样式，配置项参考 [app-plus](https://uniapp.dcloud.net.cn/collocation/pages#app-plus)
     *
     * 相应的类型是 AppPlus
     *
     * @desc App
     */
    'app-plus'?: AppPlus;
    /**
     * 设置编译到 H5 平台的特定样式，配置项参考 [H5](https://uniapp.dcloud.net.cn/collocation/pages#h5)
     *
     * 相应的类型是 H5
     *
     * @desc H5
     */
    'h5'?: H5;
    /**
     * 设置编译到 mp-alipay 平台的特定样式，配置项参考 [MP-ALIPAY](https://uniapp.dcloud.net.cn/collocation/pages#mp-alipay) 和 <https://opendocs.alipay.com/mini/framework/app-json#window>
     *
     * 相应的类型是 MpAlipay
     *
     * @desc 支付宝小程序
     */
    'mp-alipay'?: MpAlipay;
    /**
     * 设置编译到 mp-weixin 平台的特定样式，配置项参考 [MP-WEIXIN](https://uniapp.dcloud.net.cn/collocation/pages#mp-weixin) 和 <https://developers.weixin.qq.com/miniprogram/dev/reference/configuration/app.html#window>
     *
     * 相应的类型是 MpWeixin
     *
     * @desc 微信小程序
     */
    'mp-weixin'?: MpWeixin;
    /**
     * 设置编译到 mp-baidu 平台的特定样式，配置项参考 [MP-BAIDU](https://uniapp.dcloud.net.cn/collocation/pages.html#mp-baidu) 和 <https://smartprogram.baidu.com/docs/develop/framework/process/#window>
     *
     * 相应的类型是 MpBaidu
     *
     * @desc 百度小程序
     */
    'mp-baidu'?: MpBaidu;
    /**
     * 设置编译到 mp-toutiao 平台的特定样式，配置项参考 <https://developer.open-douyin.com/docs/resource/zh-CN/mini-app/develop/framework/general-configuration#window>
     *
     * 相应的类型是 MpToutiao
     *
     * @desc 抖音小程序
     */
    'mp-toutiao'?: MpToutiao;
    /**
     * 设置编译到 mp-lark 平台的特定样式
     *
     * 相应的类型是 MpLark
     *
     * @desc 飞书小程序
     */
    'mp-lark'?: MpLark;
    /**
     * 设置编译到 mp-qq 平台的特定样式
     *
     * 相应的类型是 MpQq
     *
     * @desc QQ 小程序
     */
    'mp-qq'?: MpQq;
    /**
     * 设置编译到 mp-kuaishou 平台的特定样式
     *
     * 相应的类型是 MpKuaishou
     *
     * @desc 快手小程序
     */
    'mp-kuaishou'?: MpKuaishou;
    /**
     * 设置编译到 mp-jd 平台的特定样式
     *
     * 相应的类型是 MpJd
     *
     * @desc 京东小程序
     */
    'mp-jd'?: MpJd;
    /**
     * 引用小程序组件，详见 [小程序组件](https://uniapp.dcloud.net.cn/tutorial/miniprogram-subject.html#%E5%B0%8F%E7%A8%8B%E5%BA%8F%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%84%E4%BB%B6%E6%94%AF%E6%8C%81)
     *
     * @desc App、微信小程序、支付宝小程序、百度小程序、京东小程序
     */
    'usingComponents'?: Record<string, string>;
    /**
     * 同层渲染，webrtc（实时音视频）无法正常时尝试配置为 "seperated" 强制关掉同层渲染
     *
     * @desc 微信小程序
     */
    'renderingMode'?: string;
    /**
     * 当存在 leftWindow 时，默认是否显示 leftWindow，详见 [topWindow](https://uniapp.dcloud.net.cn/collocation/pages.html#topwindow)
     *
     * @default true
     *
     * @desc H5
     */
    'leftWindow'?: boolean;
    /**
     * 当存在 topWindow 时，默认是否显示 topWindow，详见 [topWindow](https://uniapp.dcloud.net.cn/collocation/pages.html#topwindow)
     *
     * @default true
     *
     * @desc H5
     */
    'topWindow'?: boolean;
    /**
     * 当存在 rightWindow 时，默认是否显示 rightWindow，详见 [topWindow](https://uniapp.dcloud.net.cn/collocation/pages.html#topwindow)
     *
     * @default true
     *
     * @desc H5
     */
    'rightWindow'?: boolean;
    /**
     * rpx 计算所支持的最大设备宽度，单位为 px
     *
     * @default 960
     *
     * @desc App（vue2 且不含 nvue）、H5（2.8.12+）
     */
    'rpxCalcMaxDeviceWidth'?: number;
    /**
     * rpx 计算使用的基准设备宽度，设备实际宽度超出 rpx 计算所支持的最大设备宽度时将按基准宽度计算，单位为 px
     *
     * @default 375
     *
     * @desc App（vue2 且不含 nvue）、H5（2.8.12+）
     */
    'rpxCalcBaseDeviceWidth'?: number;
    /**
     * rpx 计算特殊处理的值，始终按实际的设备宽度计算，单位为 rpx
     *
     * @default 750
     *
     * @desc App（vue2 且不含 nvue）、H5（2.8.12+）
     */
    'rpxCalcIncludeWidth'?: number;
    /**
     * 是否使用动态 rpx，屏幕大小变化会重新渲染 rpx
     *
     * @default false
     *
     * @desc App-nvue（vue3 固定值为 true） 3.2.13+
     */
    'dynamicRpx'?: boolean;
    /**
     * 当浏览器可见区域宽度大于 maxWidth 时两侧留白，当小于等于 maxWidth 时页面铺满，单位为 px
     *
     * 不同页面支持配置不同的 maxWidth
     *
     * maxWidth = leftWindow（可选）+ page（页面主体）+ rightWindow（可选）
     *
     * 使用时，页面内 fixed 元素需要使用 --window-left 和 --window-right 来保证布局位置正确
     *
     * @desc H5（2.9.9+）
     */
    'maxWidth'?: number;
    [x: string]: any;
}

interface SubPackage {
    /**
     * 子包的根目录
     */
    root: string;
    /**
     * 子包由哪些页面组成，参数同 pages
     */
    pages: PageMetaDatum[];
}
type SubPackages = SubPackage[];

interface TabBarIconFont {
    /**
     * 字库 Unicode 码
     */
    text?: string;
    /**
     * 选中后字库 Unicode 码
     */
    selectedText?: string;
    /**
     * 字体图标字号，单位为 px
     */
    fontSize?: string;
    /**
     * 字体图标颜色
     */
    color?: HEXColor;
    /**
     * 字体图标选中颜色
     */
    selectedColor?: HEXColor;
    [x: string]: any;
}
interface TabBarItem {
    /**
     * 页面路径，必须在 pages 中先定义
     */
    pagePath: string;
    /**
     * tab 上按钮文字，在 App 和 H5 平台为非必填，例如中间可放一个没有文字的 + 号图标
     */
    text?: string;
    /**
     * 图片路径，icon 大小限制为 40 kb，建议尺寸为 81px * 81px
     *
     * 当 position 为 "top" 时，此参数无效
     *
     * 不支持网络图片，不支持字体图标
     */
    iconPath?: string | ThemeVar;
    /**
     * 选中时的图片路径，icon 大小限制为 40 kb，建议尺寸为 81px * 81px
     *
     * 当 position 为 "top" 时，此参数无效
     *
     * 不支持网络图片，不支持字体图标
     */
    selectedIconPath?: string | ThemeVar;
    /**
     * 该项是否显示，默认显示
     *
     * @desc App (3.2.10+)、H5 (3.2.10+)
     */
    visible?: boolean;
    /**
     * 字体图标，优先级高于 iconPath
     *
     * @desc App（3.4.4+）、H5 (3.5.3+)
     */
    iconfont?: TabBarIconFont;
    [x: string]: any;
}
interface TabBarMidButton {
    /**
     * 中间按钮的宽度，tabBar 其它项为减去此宽度后平分，默认值为与其它项平分宽度
     *
     * @default "80px"
     */
    width?: string;
    /**
     * 中间按钮的高度，可以大于 tabBar 高度，达到中间凸起的效果
     *
     * @default "50px"
     */
    height?: string;
    /**
     * 中间按钮的文字
     */
    text?: string;
    /**
     * 中间按钮的图片路径
     */
    iconPath?: string;
    /**
     * 图片宽度（高度等比例缩放）
     *
     * @default "24px"
     */
    iconWidth?: string;
    /**
     * 中间按钮的背景图片路径
     */
    backgroundImage?: string;
    /**
     * 字体图标，优先级高于 iconPath
     *
     * @desc App (3.4.4+)
     */
    iconfont?: TabBarIconFont;
    [x: string]: any;
}
interface TabBar {
    /**
     * tab 上的文字默认颜色
     *
     * @format color
     */
    color: HEXColor | ThemeVar;
    /**
     * tab 上的文字选中时的颜色
     *
     * @format color
     */
    selectedColor: HEXColor | ThemeVar;
    /**
     * tab 的背景色
     *
     * @format color
     */
    backgroundColor?: HEXColor | ThemeVar;
    /**
     * tabBar 上边框的颜色
     *
     * @default "black"
     *
     * @desc App 2.3.4+、H5 3.0.0+
     *
     * @format color
     */
    borderStyle?: 'black' | 'white' | HEXColor | ThemeVar;
    /**
     * iOS 高斯模糊效果，参考 [使用说明](https://ask.dcloud.net.cn/article/36617)
     *
     * @default "none"
     *
     * @desc App 2.4.0+、H5 3.0.0+（只有最新版浏览器才支持）
     */
    blurEffect?: 'dark' | 'extralight' | 'light' | 'none';
    /**
     * tab 列表，最少 2个，最多 5 个
     *
     * @type {TabBarItem[]}
     */
    list: [TabBarItem, TabBarItem, TabBarItem?, TabBarItem?, TabBarItem?];
    /**
     * tab 位置
     *
     * @default "bottom"
     *
     * @desc "top" 仅微信小程序支持
     */
    position?: 'bottom' | 'top';
    /**
     * 文字默认大小
     *
     * @default "10px"
     *
     * @desc App 2.3.4+、H5 3.0.0+
     */
    fontSize?: string;
    /**
     * 图标默认宽度（高度等比例缩放）
     *
     * @default "24px"
     *
     * @desc App 2.3.4+、H5 3.0.0+
     */
    iconWidth?: string;
    /**
     * 图标和文字的间距
     *
     * @default "3px"
     *
     * @desc App 2.3.4+、H5 3.0.0+
     */
    spacing?: string;
    /**
     * tabBar 默认高度
     *
     * @default "50px"
     *
     * @desc App 2.3.4+、H5 3.0.0+
     */
    height?: string;
    /**
     * 中间按钮 仅在 list 项为偶数时有效
     *
     * @desc App 2.3.4+、H5 3.0.0+
     */
    midButton?: TabBarMidButton;
    /**
     * list 设置 iconfont 属性时，需要指定字体文件路径
     *
     * @desc App 3.4.4+、H5 3.5.3+
     */
    iconfontSrc?: string;
    /**
     * 设置背景图片，优先级高于 backgroundColor
     */
    backgroundImage?: string;
    /**
     * 设置标题栏的背景图平铺方式
     *
     * "repeat" 背景图片在垂直方向和水平方向平铺
     *
     * "repeat-x" 背景图片在水平方向平铺，垂直方向拉伸
     *
     * "repeat-y" 背景图片在垂直方向平铺，水平方向拉伸
     *
     * "no-repeat" 背景图片在垂直方向和水平方向都拉伸
     *
     * @default "no-repeat"
     */
    backgroundRepeat?: 'no-repeat' | 'repeat' | 'repeat-x' | 'repeat-y';
    /**
     * tabBar上红点颜色
     *
     * @format color
     */
    redDotColor?: string;
    [x: string]: any;
}

interface TheWindow {
    /**
     * 配置页面路径
     */
    path: string;
    /**
     * 配置页面窗口表现，配置项参考 [pageStyle](https://uniapp.dcloud.net.cn/collocation/pages#style)
     */
    style?: GlobalStyle;
    /**
     * 配置显示该窗口的规则，配置项参考 [matchMedia](https://uniapp.dcloud.net.cn/collocation/pages#matchmedia)
     */
    matchMedia?: {
        /**
         * 当设备可见区域宽度 >= minWidth 时，显示该 window
         *
         * @default 768
         */
        minWidth?: number;
    };
}

interface UniIdRouter {
    /**
     * 登录页面路径
     *
     * @example "pages/index/index"
     */
    loginPage: string;
    /**
     * 需要登录才可以访问的页面列表，可以使用正则语法
     *
     * @example ["pages/detail/.*"]
     */
    needLogin: string[];
    /**
     * 是否是否自动解析云对象及 clientDB 的错误码，如果是客户端 token 不正确或 token 过期则自动跳转配置的登录页面
     *
     * @default true
     */
    resToLogin?: boolean;
}

/**
 * 对 uni-app 进行全局配置，决定页面文件的路径、窗口样式、原生的导航栏、底部的原生 tabBar 等，类似微信小程序中 app.json 的页面管理部分
 *
 * 注意定位权限申请等原属于 app.json 的内容，需要在 manifest 中配置
 */
interface PagesConfig {
    /**
     * 设置默认页面的窗口表现
     */
    globalStyle?: GlobalStyle;
    /**
     * 设置页面路径及窗口表现
     */
    pages?: PageMetaDatum[];
    /**
     * 组件自动引入规则
     *
     * @desc 2.5.5+
     */
    easycom?: EasyCom;
    /**
     * 设置底部 tab 的表现
     */
    tabBar?: TabBar;
    /**
     * 启动模式配置，仅开发期间生效
     */
    condition?: Condition;
    /**
     * 分包加载配置
     *
     * @desc H5 不支持
     */
    subPackages?: SubPackages;
    /**
     * 分包预下载规则
     *
     * @desc 微信小程序
     */
    preloadRule?: {
        /**
         * 页面路径
         */
        [path: string]: {
            /**
             * 进入页面后预下载分包的 root 或 name
             *
             * __APP__ 表示主包
             */
            packages: string[];
            /**
             * 在指定网络下预下载
             *
             * "all" 不限网络
             *
             * "wifi" 仅 wifi 下预下载
             *
             * @default "wifi"
             */
            network?: 'all' | 'wifi';
        };
    };
    /**
     * `Worker` 代码放置的目录
     *
     * @desc 微信小程序
     */
    workers?: string | {
        /**
         * `Worker` 代码放置的目录
         */
        path: string;
        /**
         * 是否打包为分包
         *
         * @desc 微信小程序基础库 v2.27.3
         *
         * @default false
         */
        isSubpackage?: boolean;
    };
    /**
     * 大屏左侧窗口
     *
     * @desc H5
     */
    leftWindow?: TheWindow;
    /**
     * 大屏顶部窗口
     *
     * @desc H5
     */
    topWindow?: TheWindow;
    /**
     * 大屏右侧窗口
     *
     * @desc H5
     */
    rightWindow?: TheWindow;
    /**
     * 自动跳转相关配置，新增于 HBuilderX 3.5.0
     *
     * @desc uni-app 3.5.0+、uni-app-x 3.99+
     */
    uniIdRouter?: UniIdRouter;
    /**
     * 默认启动首页，新增于 HBuilderX 3.7.0
     *
     * @desc 微信小程序、支付宝小程序
     */
    entryPagePath?: string;
    [x: string]: any;
}
interface UserPagesConfig extends PagesConfig {
}

declare function defineUniPages(config: UserPagesConfig): UserPagesConfig;

declare class PageContext {
    private _server;
    pagesGlobConfig: PagesConfig | undefined;
    pagesConfigSourcePaths: string[];
    pagesPath: PagePath[];
    subPagesPath: Record<string, PagePath[]>;
    pageMetaData: PageMetaDatum[];
    subPageMetaData: SubPageMetaDatum[];
    resolvedPagesJSONPath: string;
    rawOptions: UserOptions;
    root: string;
    options: ResolvedOptions;
    logger?: Logger;
    withUniPlatform: boolean;
    constructor(userOptions: UserOptions, viteRoot?: string);
    setLogger(logger: Logger): void;
    loadUserPagesConfig(): Promise<void>;
    scanPages(): Promise<void>;
    scanSubPages(): Promise<void>;
    setupViteServer(server: ViteDevServer): void;
    setupWatcher(watcher: FSWatcher): Promise<void>;
    onUpdate(): void;
    parsePage(page: PagePath): Promise<PageMetaDatum>;
    /**
     * parse pages rules && set page type
     * @param pages page path array
     * @param type  page type
     * @param overrides custom page config
     * @returns pages rules
     */
    parsePages(pages: PagePath[], type: 'main' | 'sub', overrides?: PageMetaDatum[]): Promise<PageMetaDatum[]>;
    /**
     * set home page
     * @param result pages rules array
     * @returns pages rules
     */
    setHomePage(result: PageMetaDatum[]): PageMetaDatum[];
    mergePageMetaData(): Promise<void>;
    mergeSubPageMetaData(): Promise<void>;
    updatePagesJSON(filepath?: string): Promise<boolean>;
    virtualModule(): string;
    resolveRoutes(): string;
    resolveSubRoutes(): string;
    generateDeclaration(): Promise<void> | undefined;
}

declare function invalidatePagesModule(server: ViteDevServer): void;
declare const debug: {
    hmr: Debug.Debugger;
    routeBlock: Debug.Debugger;
    options: Debug.Debugger;
    pages: Debug.Debugger;
    subPages: Debug.Debugger;
    error: Debug.Debugger;
    cache: Debug.Debugger;
    declaration: Debug.Debugger;
};
declare function extsToGlob(extensions: string[]): string;
declare function isTargetFile(path: string): boolean;
/**
 * merge page meta data array by path and assign style
 * @param pageMetaData  page meta data array
 * TODO: support merge middleware
 */
declare function mergePageMetaDataArray(pageMetaData: PageMetaDatum[]): PageMetaDatum[];
declare function useCachedPages(): {
    setCache: (filePath: string, routeBlock?: SFCBlock) => void;
    hasChanged: (filePath: string, routeBlock?: SFCBlock) => Promise<boolean>;
};

interface CustomBlock {
    attr: Record<string, any>;
    content: Record<string, any>;
}
type debugType = keyof typeof debug;
type ConfigSource = string | LoadConfigSource<PagesConfig> | LoadConfigSource<PagesConfig>[];
interface Options {
    /**
     * Generate TypeScript declaration for pages path
     *
     * Accept boolean or a path related to project root
     *
     * @default true
     */
    dts?: boolean | string;
    /**
     * Load from configs files
     *
     * @default 'pages.config.(ts|mts|cts|js|cjs|mjs|json)',
     */
    configSource: ConfigSource;
    /**
     * The default application entry page is the home page
     * @default 'pages/index' or 'pages/index/index'
     */
    homePage: string;
    /**
     * Whether to merge pages in pages.json
     * @default true
     */
    mergePages: boolean;
    /**
     * Paths to the directory to search for page components.
     * @default 'src/pages'
     */
    dir: string;
    /**
     * all root directories loaded by subPackages
     * @default []
     */
    subPackages: string[];
    /**
     * pages.json dir
     * @default "src"
     */
    outDir: string;
    /**
     * exclude page
     * @default []
     */
    exclude: string[];
    /**
     * Set the default route block parser, or use `<route lang="xxx">` in SFC route block
     * @default 'json5'
     */
    routeBlockLang: 'json5' | 'json' | 'yaml' | 'yml';
    /**
     * minify the `pages.json`
     * @default false
     */
    minify: boolean;
    /**
     * enable debug log
     */
    debug: boolean | debugType;
    onBeforeLoadUserConfig: (ctx: PageContext) => void;
    onAfterLoadUserConfig: (ctx: PageContext) => void;
    onBeforeScanPages: (ctx: PageContext) => void;
    onAfterScanPages: (ctx: PageContext) => void;
    onBeforeMergePageMetaData: (ctx: PageContext) => void;
    onAfterMergePageMetaData: (ctx: PageContext) => void;
    onBeforeWriteFile: (ctx: PageContext) => void;
    onAfterWriteFile: (ctx: PageContext) => void;
}
type UserOptions = Partial<Options>;
interface ResolvedOptions extends Omit<Options, 'dir' | 'homePage' | 'configSource' | 'dts'> {
    /**
     * Resolves to the `root` value from Vite config.
     * @default config.root
     */
    root: string;
    dts: string | false;
    /**
     * Resolved page dirs
     */
    dirs: string[];
    /**
     * Resolved entry page
     */
    homePage: string[];
    configSource: LoadConfigSource<PagesConfig>[];
}
interface PagePath {
    relativePath: string;
    absolutePath: string;
}
interface PageMetaDatum {
    /**
     * 配置页面路径
     */
    path: string;
    type?: string;
    /**
     * 配置页面窗口表现，配置项参考下方 pageStyle
     */
    style?: GlobalStyle;
    /**
     * 当前页面是否需要登录才可以访问，此配置优先级高于 uniIdRouter 下的 needLogin
     */
    needLogin?: boolean;
    [x: string]: any;
}
interface SubPageMetaDatum {
    root: string;
    pages: PageMetaDatum[];
}

declare const MODULE_ID_VIRTUAL = "virtual:uni-pages";
declare const RESOLVED_MODULE_ID_VIRTUAL = "\0virtual:uni-pages";
declare const OUTPUT_NAME = "pages.json";
declare const FILE_EXTENSIONS: string[];

/**
 * Resolves the files that are valid pages for the given context.
 */
declare function getPageFiles(path: string, options: ResolvedOptions): string[];
declare function checkPagesJsonFile(path: string): boolean;
declare function writeFileSync(path: string, content: string): void;

declare function resolveOptions(userOptions: UserOptions, viteRoot?: string): ResolvedOptions;
/**
 * Resolves the page dirs for its for its given globs
 */
declare function resolvePageDirs(dir: string, root: string, exclude: string[]): string[];

declare function parseSFC(code: string): Promise<SFCDescriptor>;
declare function parseCustomBlock(block: SFCBlock, filePath: string, options: ResolvedOptions): CustomBlock | undefined;
declare function getRouteSfcBlock(path: string): Promise<SFCBlock | undefined>;
declare function getRouteBlock(path: string, blockStr: SFCBlock | undefined, options: ResolvedOptions): Promise<CustomBlock | undefined>;

declare function VitePluginUniPages(userOptions?: UserOptions): Plugin;

export { type Condition, type ConditionItem, type ConfigSource, type CustomBlock, type EasyCom, FILE_EXTENSIONS, type GlobalStyle, MODULE_ID_VIRTUAL, OUTPUT_NAME, type Options, PageContext, type PageMetaDatum, type PagePath, type PagesConfig, RESOLVED_MODULE_ID_VIRTUAL, type ResolvedOptions, type SubPackage, type SubPackages, type SubPageMetaDatum, type TabBar, type TabBarIconFont, type TabBarItem, type TabBarMidButton, type TheWindow, type UniIdRouter, type UserOptions, type UserPagesConfig, VitePluginUniPages, checkPagesJsonFile, debug, type debugType, VitePluginUniPages as default, defineUniPages, extsToGlob, getPageFiles, getRouteBlock, getRouteSfcBlock, invalidatePagesModule, isTargetFile, mergePageMetaDataArray, parseCustomBlock, parseSFC, resolveOptions, resolvePageDirs, useCachedPages, writeFileSync };
