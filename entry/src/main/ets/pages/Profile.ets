@Component
export struct ProfilePage {
  build() {
    Column() {
      Row() {
        Text('我的')
          .fontSize(20)
          .opacity(0.85)
      }
      .height('56vp')
      .padding({ left: 16, right: 16 })

      Column() {
        // 头像占位：图片黄色
        Stack() {}
          .width('72vp').height('72vp')
          .backgroundColor(Color.fromRGB(255, 215, 0))
          .borderRadius(36)
        Text('Geno 用户')
          .fontSize(16)
          .margin({ top: 8 })
        Row() {
          Button('设置')
            .height('36vp').borderRadius(18)
          Button('隐私')
            .height('36vp').borderRadius(18)
        }
        .margin({ top: 12 })
      }
      .padding(16)
    }
    .width('100%').height('100%')
  }
}