import Vue from 'vue'
import VueRouter from 'vue-router'
import Login from '../views/Login.vue'
import Password from '../views/Password.vue'

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
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
