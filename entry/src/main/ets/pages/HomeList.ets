@Component
export struct HomeListPage {
  build() {
    Column() {
      // 顶部导航（iOS风格）
      Row() {
        Text('附近')
          .fontSize(20)
          .opacity(0.85)
        Blank()
        Button('筛选')
          .fontSize(14)
      }
      .height('56vp')
      .padding({ left: 16, right: 16 })

      // 列表卡片（StoreCard 占位：图片黄、图标红）
      List() {
        ForEach([1,2,3,4,5], (i: number) => {
          ListItem() {
            Row() {
              // 图片占位：黄色
              Stack() {}
                .width('64vp').height('64vp')
                .backgroundColor(Color.fromRGB(255, 215, 0))
                .borderRadius(12)

              Column() {
                Text('门店名称')
                  .fontSize(16)
                Text('品类 · 可预约')
                  .fontSize(12)
                  .opacity(0.7)
                Row() {
                  Text('¥')
                    .fontSize(14)
                  Text('价格区间')
                    .fontSize(12)
                    .opacity(0.7)
                }
                .margin({ top: 4 })
              }
              .margin({ left: 12 })

              Blank()

              // 主要操作按钮（预约）
              Button('预约')
                .height('40vp')
                .width('80vp')
                .borderRadius(20)
            }
            .padding(12)
          }
        })
      }
    }
    .width('100%').height('100%')
  }
}