# GENOFOOD Figma 设计蓝图（iOS风格，对标 Too Good To Go）

目的
- 将 UI设计规范.md 的原则转化为 Figma 可操作的页面、组件与样式结构，供设计与开发同步。

文件结构（Pages）
- 01_Onboarding
- 02_Home_List
- 03_Home_Map
- 04_Shop_Detail
- 05_Checkout
- 06_Order_Success
- 07_Orders
- 08_Order_Detail
- 09_Favorites
- 10_Profile
- 11_Components（组件库与样式）

画板规范（iOS）
- 命名：`PageName / Variant`（示例：`Home_List / Nearby`、`Home_List / Filtered`）。
- 安全区：顶部/底部安全区留白；状态栏 44pt 参考；底部 Home 指示保留。
- 列表与卡片统一 Auto Layout；内容变更时自动适配高度。

样式令牌（Styles）
- Color Styles：
  - Neutral/Surface（背景层），Text/Primary、Text/Secondary，Accent/Primary。
- Type Styles（字体）：Title、Subtitle、Body；遵循行高可读性（fp）。
- Radius：12、16；Shadow：soft、float。

占位素材颜色（遵循项目规则）
- 图标：红色；图片：黄色；视频：蓝色；其他：绿色。

组件（Components）
- Comp/StoreCard（门店卡片）
  - 结构：缩略图（黄）、店名/评分、品类标签、价格、可预约时间段与剩余数量、收藏按钮（红）。
  - 变体：默认、选中、售罄、不可预约（置灰）。
  - 约束：卡片边距 16pt，圆角 12/16pt，阴影 soft。
- Comp/FilterSheet（筛选弹层）
  - 条件：距离、价格区间、品类、取餐时间段；底部“重置/应用”。
  - 交互：可滚动；分组标题与开关控件统一。
- Comp/Voucher（凭证）
  - 内容：二维码（或数字码）、门店地址、时间段、到店指引；提醒开关、复制码。
  - 变体：未到时、可用、过期、已核销。
- Comp/OrderCard（订单卡）
  - 字段：状态图标、时间窗、门店信息、按钮（查看/评价）。
- Nav/TopBar、Nav/TabBar、List/Cell：统一尺寸与字重。

页面内容与流转
- 02_Home_List：
  - 顶部搜索/筛选；列表卡片；页脚加载指示。
  - 交互：进入 `04_Shop_Detail`；筛选进入 `Comp/FilterSheet`。
- 03_Home_Map：
  - 地图点位与状态；门店卡片浮层；切换返回列表。
- 04_Shop_Detail：
  - 店铺信息、礼包描述、时间段选择、数量与价格；主按钮“预约”。
- 05_Checkout：
  - 订单确认、付款方式占位；接受条款文本；继续生成凭证。
- 06_Order_Success：
  - `Comp/Voucher` 展示；到店提醒、路线入口。
- 07_Orders：
  - 订单列表（待取餐/已完成/已取消）；点击进入详情。
- 08_Order_Detail：
  - 订单详情与凭证；状态变更与操作记录。
- 09_Favorites：
  - 收藏门店列表；取消收藏。
- 10_Profile：
  - 头像与用户信息；设置、通知、隐私页入口。

命名与资源
- 组件命名：`Comp/StoreCard`、`Comp/Voucher`、`Comp/FilterSheet`、`Comp/OrderCard`。
- 导航命名：`Nav/TopBar`、`Nav/TabBar`。
- 列表命名：`List/Cell`。

原型连接（Prototype）
- Home_List → Shop_Detail → Checkout → Order_Success。
- Orders → Order_Detail。
- TabBar：5个底部标签之间互相跳转；返回逻辑统一。

验收
- 关键流程可在 Figma Prototype 中完整点击预览；
- 文案与图标遵循 UI设计规范.md；错误信息用屏内红色文案；
- 所有图像/图标/视频占位颜色符合规则。

备注
- 本蓝图为落地指引，确保 Figma 的页面与组件可直接用于开发标注。