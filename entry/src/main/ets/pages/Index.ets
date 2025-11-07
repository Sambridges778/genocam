import { HomeListPage } from './HomeList';
import { HomeMapPage } from './HomeMap';
import { OrdersPage } from './Orders';
import { FavoritesPage } from './Favorites';
import { ProfilePage } from './Profile';

@Entry
@Component
struct Index {
  private currentTab: number = 0;
  build() {
    Column() {
      // 内容区域
      Stack() {
        if (this.currentTab === 0) {
          HomeListPage()
        } else if (this.currentTab === 1) {
          HomeMapPage()
        } else if (this.currentTab === 2) {
          OrdersPage()
        } else if (this.currentTab === 3) {
          FavoritesPage()
        } else {
          ProfilePage()
        }
      }
      .height('88%')

      // 底部Tab（iOS风格）
      Row() {
        ForEach(['首页','地图','订单','收藏','我的'], (label: string, i: number) => {
          Button(label)
            .width('20%')
            .height('56vp')
            .onClick(() => this.currentTab = i)
        })
      }
      .height('64vp')
      .backgroundColor(Color.Black)
    }
  }
}