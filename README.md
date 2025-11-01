# GenoCam（HarmonyOS 项目）

## 项目简介
- 类型：HarmonyOS Stage 模式应用（`apiType: stageMode`）。
- 应用包名：`com.example.genocam`，版本：`1.0.0`（`versionCode: 1000000`）。
- 目标/兼容 SDK：`6.0.0(20)`，运行环境：`HarmonyOS`。
- 主模块：`entry`，主页页面：`pages/Index`。
- 能力：
  - `EntryAbility`（UIAbility，加载主页 `pages/Index`）。
  - `EntryBackupAbility`（备份扩展能力，提供备份/恢复钩子）。

## 运行环境
- 推荐 IDE：DevEco Studio 5.x 及以上，已安装 HarmonyOS SDK `6.0.0(20)`。
- Node 环境由 IDE 内置即可；命令行构建可使用 `hvigorw`（IDE 自带）。

## 目录结构（关键项）
- `AppScope/`
  - `app.json5`：应用级配置（包名、版本、图标、标签）。
  - `resources/`：应用级资源（字符串、媒体）。
- `entry/`
  - `src/main/module.json5`：模块清单，入口能力与页面映射。
  - `src/main/ets/entryability/EntryAbility.ets`：UIAbility 主入口，加载 `pages/Index`。
  - `src/main/ets/entrybackupability/EntryBackupAbility.ets`：备份扩展能力。
  - `src/main/ets/pages/Index.ets`：示例页面（点击文本从“Hello World”切换到“Welcome”）。
  - `src/main/resources/`：模块资源（字符串、颜色、媒体、页面列表等）。
  - `src/ohosTest/`：设备端测试（Hypium）。
  - `src/test/`：本地单元测试（Hypium）。
  - `build-profile.json5`：模块构建选项（混淆、target 等）。
  - `hvigorfile.ts`：模块构建脚本（`hapTasks`）。
- 根目录
  - `build-profile.json5`：应用构建配置（产品、SDK、构建模式）。
  - `hvigor/hvigor-config.json5`：Hvigor 全局配置。
  - `hvigorfile.ts`：应用构建脚本（`appTasks`）。
  - `oh-package.json5`：全局 ohpm 依赖（开发：`@ohos/hypium`, `@ohos/hamock`）。
  - `code-linter.json5`：ArkTS 代码规范与安全规则。

## 快速开始
- 使用 DevEco Studio：
  - 打开项目根目录 `GenoCam`。
  - 连接设备或启动模拟器。
  - 选择模块 `entry`，点击 `Run` 即可部署运行。
- 可选命令行（依赖 IDE 内置 `hvigorw`）：
  - 在项目根目录执行依赖安装：`ohpm install`（如需）。
  - 构建：`hvigorw build`（或在 IDE 中使用“Build”）。
  - 清理：`hvigorw clean`。

## 测试
- 测试框架：`@ohos/hypium`。
- 设备端测试入口：`entry/src/ohosTest/ets/test/List.test.ets`（示例能力测试）。
- 本地单元测试入口：`entry/src/test/List.test.ets`（示例单元测试）。
- 运行方式：
  - DevEco Studio 中选择 `ohosTest` 目标/配置后运行。

## 页面与能力说明
- `Index.ets`：
  - 使用 `RelativeContainer` 布局与 `Text` 组件。
  - 点击文本将 `message` 从 `Hello World` 切换为 `Welcome`。
  - 字体大小来源于资源 `app.float.page_text_font_size`。
- `EntryAbility.ets`：
  - 在 `onWindowStageCreate` 中 `windowStage.loadContent('pages/Index')` 加载主页。
- `EntryBackupAbility.ets`：
  - 提供 `onBackup` 与 `onRestore` 钩子，示例中记录日志。

## 构建与发布
- 构建模式：`debug`、`release`（见 `build-profile.json5`）。
- 模块混淆：`entry/build-profile.json5` 中可开启；示例规则位于 `entry/obfuscation-rules.txt`（默认关闭）。

## 代码规范（ArkTS）
- 规则来源：`code-linter.json5`（针对 `*.ets` 文件）。
- 含安全规则示例：禁止不安全的加密/哈希/密钥使用等（`@security/*` 规则）。

## 版本信息
- `bundleName`: `com.example.genocam`
- `versionName`: `1.0.0`
- `versionCode`: `1000000`
- `vendor`: `example`

## 依赖
- 开发依赖：
  - `@ohos/hypium@1.0.24`（测试框架）。
  - `@ohos/hamock@1.0.0`（测试/模拟相关）。

## 常见问题
- 构建失败：请确认 HarmonyOS SDK `6.0.0(20)` 已安装，且使用 DevEco Studio 最新版本。
- 资源引用：`app.json5` 与 `module.json5` 中资源键需与 `resources` 目录保持一致。

## 许可证
- 本项目未设置许可证（`license` 字段为空）。如需开源请自行补充相应 License。

## Geno 相机愿景
- 你的口袋里的专业摄影师：我们推崇无需后期编辑，一键直出，呈现最真实的复古摄影或视频，让所有人更专注于享受当下拍摄的乐趣。
- 灵感源自 80 年代复古胶片相机：在真实胶片样本的采样与分析基础上，还原胶片摄影的颜色与质感。

## 胶片与相机类型支持
- 胶片规格：`135`、`120`、半格胶片、一次性胶片、3D 胶片摄影、正片幻灯片。
- 相机类型：玩具胶片相机、即时成像相机等多种复古机型。

## 数码相机风格
- 现代风格的色彩还原：微单相机、CCD 相机。
- 更多风格将持续增加中。

## 复古视频模式
- 8mm 胶片摄影机、16mm 胶片摄影机。
- VHS 磁带摄影机、DCR 摄影机。
- 电影摄影机、幻灯片放映机等。

## 拍摄附加功能与配件
- 保存底片并重新冲洗，获得不同曝光与色温（仅部分相机）。
- 双重曝光：两张照片叠加。
- 定时拍摄功能。
- 闪光灯与彩色滤色片。
- 导入现有照片进行处理（仅部分相机）。
- 色温与色调调节。
- 摄像头预设焦距切换或自由变焦。
- 曝光补偿调节。
- 相机 `ISO` 与快门速度调整。
- 防抖档位调节。
- 辅助构图网格。
- 特殊镜头：鱼眼、星光、色散、`ND` 滤镜。

## 更新节奏
- 我们会经常推出新的相机与胶片/视频风格，敬请期待。

## 技术实现路线（HarmonyOS + ArkTS）
- 开发模式：
  - 使用 HarmonyOS Stage 模式与 ArkTS（ETS）声明式 UI（ArkUI）。
  - `UIAbility` 作为入口（`EntryAbility`），`BackupExtensionAbility` 提供备份/恢复能力。
  - 资源与页面通过 `module.json5` 的 `pages` 与 `resources` 统一管理。
- 架构分层：
  - UI 层（ArkUI）：`CameraPage`、`GalleryPage`、`SettingsPage`、`PresetPicker`。
  - 能力层（Ability/Extension）：相机权限请求、窗口载入、备份扩展。
  - 媒体管线层：相机采集（预览/拍照/录像）、滤镜链（LUT/曲线/颗粒/晕影/色散等）、编码与保存。
  - 资源与预设：胶片预设、镜头附件、视频模式配置（JSON/LUT/纹理资源）。
  - 存储层：底片存储与二次冲洗信息、用户设置（偏好/数据库/媒体库）。
- 相机/媒体 API 路线（示意）：
  - 预览：`CameraManager → CameraInput → CaptureSession → PreviewOutput → Surface`（ArkUI 组件承载）。
  - 拍照：`PhotoOutput` 获取原始图像为 `PixelMap`，进入滤镜链后保存到媒体库。
  - 录像：`VideoOutput` 与 `Recorder` 协同，实时滤镜管线在 `Surface` 上渲染并编码封装。
  - 闪光灯/对焦/曝光/白平衡/ISO/快门：通过相机会话参数控制与 UI 绑定。
- 滤镜与预设实现：
  - 胶片色彩还原：优先使用 GPU Shader/LUT（2D/3D）实现；曲线（RGB/亮度）、晕影、颗粒、哈雷效应（Halation）等。
  - 静态照片：`PixelMap` 进入离屏处理（GPU/CPU 结合），输出高质量结果。
  - 视频：实时滤镜链（图像处理节点图），按相机帧率与分辨率优化。
  - 特殊镜头：鱼眼/星光/色散/ND 滤镜通过几何/卷积/采样策略实现。
- 附加功能映射：
  - 底片保存与重新冲洗：保存原始像素与侧车（sidecar）元数据；重新应用滤镜链并变更曝光/色温。
  - 双重曝光：两张 `PixelMap` 合成（屏幕/叠加/自定义混合模式），支持权重与对齐。
  - 定时器/连拍：在 UI 层增加定时控制与连拍序列管理。
  - 导入照片处理：通过媒体库读取 `PixelMap`，应用滤镜链并输出新资源或副本。
  - 构图网格/防抖档位：网格为 UI 叠加层；防抖通过相机参数与后期稳定策略（视频）。

## 权限与配置（合规）
- 模块清单（`entry/src/main/module.json5`）建议增加：
  - `reqPermissions`: `ohos.permission.CAMERA`、`ohos.permission.MICROPHONE`（视频录制）
  - `ohos.permission.READ_MEDIA`、`ohos.permission.WRITE_MEDIA`（媒体读写）
  - `ohos.permission.FLASHLIGHT`（闪光灯）
- 运行时权限申请：
  - 在 `EntryAbility` 或相机页面初始化时调用 `this.context.requestPermissionsFromUser([...])`，在用户授权后再初始化相机会话。
- 设备类型：目前 `phone`，如需穿戴/平板/TV，需在 `module.json5` 扩展 `deviceTypes` 并适配 UI。

## 性能优化策略
- 预加载与池化：相机会话、LUT/纹理、渲染管线与编码器进行复用与生命周期管理。
- 并发：CPU 密集型任务使用 ArkTS `worker`；GPU 统一图像处理节点图以减少内存拷贝。
- 分辨率与帧率自适应：根据设备性能与模式自动调整渲染/编码参数。
- 缓存：预设与资源缓存（LUT、纹理、曲线表），降低 I/O 与解析成本。

## 测试与质量保障
- 单元测试（Hypium）：
  - 滤镜链各节点的纯函数测试（曲线、LUT、混合模式、几何变换）。
  - 预设解析与参数映射测试。
- 集成测试：
  - 相机预览/拍照/录像在设备或模拟器上验证；影像质量基准对比（颜色/噪点/锐度）。
  - 权限流转与异常处理（拒绝/撤销权限）。
- 模拟与桩：使用 `hamock` 对相机/媒体库进行接口桩替换，保障非设备环境下的流水线稳定性。

## 构建与发布
- 使用 Hvigor 构建：`debug`/`release` 模式；根据需要开启混淆（`entry/build-profile.json5`）。
- 媒体资源体积控制：LUT 与纹理按需加载与分包；必要时使用资源优化策略。
- 版本管理：在 `AppScope/app.json5` 更新 `versionCode`/`versionName` 并记录变更日志。

## 迭代里程碑（建议）
- M1：实现相机预览、拍照与基础胶片预设（LUT+曲线）。
- M2：底片保存/重新冲洗、曝光补偿、色温/色调调节、构图网格。
- M3：录像与复古视频模式（8mm/16mm/VHS/DCR/电影机），基础防抖。
- M4：双重曝光、镜头附件（鱼眼/星光/色散/ND）、闪光灯滤色片、导入现有照片。
- M5：性能调优、资源优化、国际化与可访问性、完整测试矩阵与发布。