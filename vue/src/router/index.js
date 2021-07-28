import {createRouter, createWebHistory} from 'vue-router'
import Layout from '../layout/Layout.vue'

const routes = [
    {
        path: '/',
        name: 'Layout',
        component: Layout,
        redirect: "/user",
        children: [
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
        next({path: "/login"})
    } else {
        next()
    }

})

export default router
