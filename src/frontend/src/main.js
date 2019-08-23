import Vue from 'vue'
import App from './App.vue'
import router from './router'
import vuetify from './plugins/vuetify';
import './assets/fontawesome/all.css'

Vue.config.productionTip = false
Vue.use(vuetify, {
  iconfont: 'fa'
 })

new Vue({
  router,
  vuetify,
  render: h => h(App)
}).$mount('#app')
