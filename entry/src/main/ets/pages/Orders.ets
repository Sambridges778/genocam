@Component
export struct OrdersPage {
  build() {
    Column() {
      Row() {
        Text('订单')
          .fontSize(20)
          .opacity(0.85)
      }
      .height('56vp')
      .padding({ left: 16, right: 16 })

      List() {
        ForEach(['待取餐','已完成','已取消'], (status: string) => {
          ListItem() {
            Row() {
              // 图标占位：红色
              Stack() {}
                .width('28vp').height('28vp')
                .backgroundColor(Color.fromRGB(220, 20, 60))
                .borderRadius(8)
              Column() {
                Text(`订单 · ${status}`)
                  .fontSize(16)
                Text('取餐时间段')
                  .fontSize(12)
                  .opacity(0.7)
              }
              .margin({ left: 12 })
            }
            .padding(12)
          }
        })
      }
    }
    .width('100%').height('100%')
  }
}