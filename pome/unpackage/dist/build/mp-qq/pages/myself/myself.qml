<view class="SayPanel _div data-v-1cd9e415"><view class="mySelf _div data-v-1cd9e415"><block wx:if="{{powerStatus}}"><view class="powerPanel _div data-v-1cd9e415" style="margin-top:50rpx;"><block wx:if="{{canIUse}}"><button class="powerInfo data-v-1cd9e415" type="primary" size="small" open-type="getUserInfo" data-event-opts="{{[['getuserinfo',[['bindGetUserInfo',['$event']]]],['tap',[['getUserInfo1',['$event']]]]]}}" bindgetuserinfo="__e" bindtap="__e">点击授权</button></block><block wx:else><view class="_div data-v-1cd9e415">请升级qq版本</view></block></view></block><block wx:if="{{!powerStatus}}"><view class="nickPanel _div data-v-1cd9e415"><view class="panelInfo _div data-v-1cd9e415"><image class="nickImg _img data-v-1cd9e415" src="{{avatarUrl}}"></image></view></view></block><view class="nickList _div data-v-1cd9e415"><block wx:for="{{listDetail}}" wx:for-item="item" wx:for-index="index" wx:key="index"><view data-event-opts="{{[['tap',[['jumpInfo',['$0'],[[['listDetail','',index,'jumpUrl']]]]]]]}}" class="list_panel _div data-v-1cd9e415" bindtap="__e"><view class="imgLeft _div data-v-1cd9e415"><image class="imgNing _img data-v-1cd9e415" src="{{item.imgInfo}}"></image></view><view class="textInfo _p data-v-1cd9e415">{{item.title}}</view><view class="textRight _div data-v-1cd9e415"><image class="jian _img data-v-1cd9e415" src="{{jiantou}}"></image></view></view></block></view><view class="nickList _div data-v-1cd9e415"><view class="list_panel _div data-v-1cd9e415"><view class="imgLeft _div data-v-1cd9e415"><image class="imgNing _img data-v-1cd9e415" src="{{shareImg}}"></image></view><button class="infoTitle textInfo data-v-1cd9e415" open-type="share">分享好友</button><view class="textRight _div data-v-1cd9e415"><image class="jian _img data-v-1cd9e415" src="{{jiantou}}"></image></view></view></view><view style="width:100%;margin-top:30rpx;" class="_div data-v-1cd9e415"><official-account class="data-v-1cd9e415"></official-account></view></view></view>