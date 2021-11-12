import {createRouter, createWebHistory} from 'vue-router'
import Layout from "@/layout/Layout";

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
        ]
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
// let limitPagePath = ['/about']

// router.beforeEach((to, from, next) => {
//     if (limitPagePath.includes(to.path)) {
//         // 判断sessionStorage是否保存了用户信息
//         let userStr = sessionStorage.getItem("user") || "{}"
//         let user = JSON.parse(userStr)
//         if (!user.id) {
//             // 跳转到登录页面
//             next({path: "/login"})
//         } else {
//             next()
//         }
//     } else {
//         next()
//     }
//
// })

export default router
