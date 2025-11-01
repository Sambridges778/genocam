@Component
export struct CameraPage {
  private mode: string = 'PHOTO';
  private currentPreset: string = 'Classic Film';
  private isRecording: boolean = false;

  build() {
    Column() {
      // 顶部栏
      Row() {
        Text(this.mode)
          .fontSize($r('app.float.font_size_subtitle'))
          .fontColor($r('app.color.text_primary'))
          .opacity(0.8)
        Blank()
        Text(this.currentPreset)
          .fontSize($r('app.float.font_size_subtitle'))
          .fontColor($r('app.color.text_secondary'))
          .opacity(0.6)
        Blank()
        Button('设置')
          .fontSize($r('app.float.font_size_body'))
      }
      .height('56vp')
      .padding({ left: 16, right: 16 })

      // 预览区占位（后续接入相机会话与滤镜链）
      Stack() {
        Column() {
          Text('预览')
            .fontSize($r('app.float.font_size_title'))
            .fontColor($r('app.color.text_secondary'))
            .opacity(0.6)
        }
        .height('100%')
        .width('100%')
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
      }
      .height('58%')
      .width('100%')
      .backgroundColor($r('app.color.bg_surface_alt'))
      .borderRadius(16)

      // 预设走马灯
      Scroll({ scrollable: ScrollDirection.Horizontal }) {
        Row() {
          ForEach(['Film A', 'Film B', 'CCD', '8mm', 'VHS', 'Toy Cam'], (item: string) => {
            Button(item)
              .fontSize($r('app.float.font_size_body'))
              .margin({ right: 8 })
          })
        }
        .padding({ left: 16, right: 16 })
      }
      .height('88vp')

      // 底部工具栏
      Row() {
        Button('相册')
          .width('64vp')
        Blank()
        Button(this.isRecording ? '停止' : '拍摄')
          .width('120vp')
          .height('48vp')
          .backgroundColor($r('app.color.accent_primary'))
          .borderRadius(24)
          .onClick(() => {
            this.isRecording = !this.isRecording;
          })
        Blank()
        Button('切摄像头')
          .width('96vp')
      }
      .height('72vp')
      .padding({ left: 16, right: 16, bottom: 16 })
      .justifyContent(FlexAlign.SpaceBetween)
      .backgroundColor($r('app.color.bg_surface'))
      .borderRadius(16)
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.bg_surface'))
  }
}