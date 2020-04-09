import Vue from 'vue'
import Vuex from 'vuex'
import App from './App'

Vue.config.productionTip = false

App.mpType = 'app'
Vue.use(Vuex)

const store = new Vuex.Store({
  state: {
    loginStatus:0
  },
  mutations: {
    changeLogin(state,params){
      console.log('登录状态',params)
      state.loginStatus = params;
    }
  }
})


Vue.prototype.$store = store

const app = new Vue({
	...App
})
app.$mount()
