@Component
export struct FavoritesPage {
  build() {
    Column() {
      Row() {
        Text('收藏')
          .fontSize(20)
          .opacity(0.85)
      }
      .height('56vp')
      .padding({ left: 16, right: 16 })

      List() {
        ForEach([1,2,3], (i: number) => {
          ListItem() {
            Row() {
              Stack() {}
                .width('64vp').height('64vp')
                .backgroundColor(Color.fromRGB(255, 215, 0))
                .borderRadius(12)
              Column() {
                Text('收藏门店')
                  .fontSize(16)
                Text('距离 · 品类')
                  .fontSize(12)
                  .opacity(0.7)
              }
              .margin({ left: 12 })
              Blank()
              Button('取消收藏')
                .height('36vp').borderRadius(18)
            }
            .padding(12)
          }
        })
      }
    }
    .width('100%').height('100%')
  }
}