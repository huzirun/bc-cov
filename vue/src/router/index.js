import {createRouter, createWebHistory} from 'vue-router'
import Layout from '../layout/Layout.vue'

const routes = [
    {
        path: '/',
        name: 'Layout',
        component: Layout,
        redirect: "/home",
        children: [
            {
                path: 'home',
                name: 'Home',
                component: () => import("@/views/Home"),
            },
            {
                path: 'user',
                name: 'User',
                component: () => import("@/views/User"),
            },
            {
                path: 'book',
                name: 'Book',
                component: () => import("@/views/Book"),
            },
            {
                path: 'news',
                name: 'News',
                component: () => import("@/views/News"),
            },
            {
                path: 'person',
                name: 'Person',
                component: () => import("@/views/Person"),
            },
            {
                path: 'category',
                name: 'Category',
                component: () => import("@/views/Category"),
            },
            {
                path: 'map',
                name: 'Map',
                component: () => import("@/views/Map"),
            },
            {
                path: 'im',
                name: 'Im',
                component: () => import("@/views/Im"),
            },
            {
                path: 'message',
                name: 'Message',
                component: () => import("@/views/Message"),
            },
            {
                path: 'donate',
                name: 'Donate',
                component: () => import("@/views/Donate"),
            },
            {
                path: 'order',
                name: 'Order',
                component: () => import("@/views/Order"),
            }
        ]
    },
    {
        path: '/about',
        name: 'about',
        component: () => import("@/views/User")
    },
    {
        path: '/login',
        name: 'Login',
        component: () => import("@/views/Login")
    },
    {
        path: '/register',
        name: 'Register',
        component: () => import("@/views/Register")
    },
]

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes
})

// 限制某些页面禁止未登录访问
let limitPagePath = ['/about']

router.beforeEach((to, from, next) => {
    if (limitPagePath.includes(to.path)) {
        // 判断sessionStorage是否保存了用户信息
        let userStr = sessionStorage.getItem("user") || "{}"
        let user = JSON.parse(userStr)
        if (!user.id) {
            // 跳转到登录页面
            next({path: "/login"})
        } else {
            next()
        }
    } else {
        next()
    }

})

export default router
