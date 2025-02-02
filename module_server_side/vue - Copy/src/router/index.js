import Vue from 'vue'
import VueRouter from 'vue-router'
import Login from '../views/Login.vue'
import Password from '../views/Password.vue'
import Polling from '../views/polling.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/login',
    name: 'Login',
    component: Login
  },
  {
    path: '/password',
    name: 'Password',
    component: Password
  },
  {
    path: '/polling',
    name: 'Polling',
    component: Polling
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
