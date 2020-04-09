<template>
	<view class="conTent">
			<view class="Img">
				<image class="imgalisa" src="../../static/image/love/love.png"></image>
			</view>
			<bing-lyric :lyrics="list" :centerStyle="centerStyle" :curTime="curTime" :areaStyle="cuAreaStyle" :lyricStyle="lyricStyle"
			 @centerBtnClick="centerBtnClick" @copyLyrics="copy"></bing-lyric>
			<view class="footer">
					<button class="buttonmic" src = '../../static/image/happy/btn.png' @click="botton()" v-if="flag == true">音乐已开始</button>
					<button class="buttonmic" src = '../../static/image/happy/btn.png' @click="botton()" v-if="flag == false">音乐已暂停</button>
			</view>
	</view>	
</template>

<script>
	import bingLyric from '../../components/bing-lyric/bing-lyric.vue'
	const innerAudioContext = uni.createInnerAudioContext();
	innerAudioContext.autoplay = false;
	innerAudioContext.seek = 5
	innerAudioContext.src = 'http://wp.zp68.com/sub/filestores/2019/09/26/0ca628e6b2f33fe9ce53d5b2d001629a.mp3'
	export default {
		data() {
			return { 
				flag :true,
				musictime:0,
				title: 'Hello',
				centerStyle: {
					btnImg: '../../static/image/happy/btn.png',
				},
				lyricStyle: {
				},
				cuAreaStyle: {
					width: '100vw',
					background: 'linear-gradient(#ffabfe, #ffaa7f, #7ec2c8)'
				},
				curTime: 0,
				list:['[00:02.940]Alisa',
					'[00:05.940]你是一位爱笑的女孩',
					'[00:08.940] 我会守护你生命里的精彩，并陪伴你一路精彩下去',
					'[00:13.940]虽然我知道我们在异地，唯一的交流只能是qq',
					'[00:16.940]但是我也愿意用心去呵护我们这来之不易的美好',
					'[00:20.940]我觉得我最幸运的事情就是遇见你！',
					'[00:25.940]你的幸福快乐，是我一生的追求。',
					'[00:29.940]我会每一天带着笑脸，和你说早安，',
					'[00:32.940]我会每一晚与你道声晚安再入梦乡，',
					'[00:35.940]我愿意带你去所有你想去的地方，',
					'[00:38.940]陪你闹看你笑',
					'[00:45.940]历经你生命中所有的点点滴滴。',
					'[00:49.940]我期待这一生与你一起走过，',
					'[00:52.940]我期待与你慢慢变老',
					'[00:56.940]等我们老到哪儿也去不了，',
					'[00:62.940]我就找你一起下五子棋！',
					'[00:65.940]你是我喜欢的人，我会牵着你的手，走到满头白发的那一天，',
					'[00:69.940][陌生，爱)','与我的Alisa',
					'[00:99.940]  -- Yours, gumu.']
			}
		},
		methods: {
			copy(e){
				console.log('index',e)
				uni.showModal({
					content: JSON.stringify(e.lyrics)
				})
			},
			centerBtnClick(e){
				console.log(e)
				this.curTime = e.centerTime
			},
			makeTime() {
				let i = 0
				if(this.flag){
					for (i;i<500;i++){
						setTimeout(this.out, i*500,0.5)
					}
				}
				
			},
			out(t){
				if(this.flag){
					this.curTime += t
				}
				
			},
			botton(){
				if(this.flag){
					innerAudioContext.pause()
					this.musictime = this.curTime
				}else{
					innerAudioContext.play()
					this.curTime = this.musictime
				}
				this.flag =!this.flag
				console.log(this.flag)
			},
		},
		onShow(){		
			this.makeTime()
			innerAudioContext.play()
			console.log("开始播放")
		},
		onUnload(){
		  innerAudioContext.stop()
		  console.log("停止播放")
		}
			
	}
	
</script>

<style scoped>
	.Img{
		background-color: #ffabfe;
		width: 100%;
		display: flex;
		justify-content: center;
	}
	.imgalisa{
		height: 150rpx;
		width: 500rpx;
	}
	.buttonmic{
		margin-top: 10rpx;
		width: 300rpx;
		border-radius: 6px;
		background-color: #63b4ff;
	}
	.conTent{
		margin: 0;
		padding: 0;
		font-size: 13px !important;
		font-family: '微软雅黑', '宋体', sans-serif;
		color: #231F20;
		overflow: auto;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	.footer{
		width: 100%;
		height: 250rpx;
		background-color: #f7cdff;	
	}
</style>
