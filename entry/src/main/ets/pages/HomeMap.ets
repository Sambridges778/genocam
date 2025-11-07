@Component
export struct HomeMapPage {
  build() {
    Column() {
      Row() {
        Text('地图')
          .fontSize(20)
          .opacity(0.85)
        Blank()
        Button('列表')
          .fontSize(14)
      }
      .height('56vp')
      .padding({ left: 16, right: 16 })

      // 地图占位：其他文件用绿色
      Stack() {}
        .width('100%')
        .height('100%')
        .backgroundColor(Color.fromRGB(0, 128, 0))
        .borderRadius(16)
    }
    .width('100%').height('100%')
  }
}