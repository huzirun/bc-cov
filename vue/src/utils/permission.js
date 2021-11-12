import router from "@/router";
import Layout from "@/layout/Layout";

// 注意：这个文件是设置动态路由的
// permissions是一个资源的数组
export function activeRouter(permissions) {
    let root = {
        path: '/',
        name: 'Layout',
        component: Layout,
        redirect: "/home",
        children: []
    }
    permissions.forEach(p => {
        let obj = {
            path: p.path,
            name: p.name,
            component: () => import("@/views/" + p.name)
        };
        root.children.push(obj)
    })
    // {
    //     path: '/book',
    //     name: 'Book',
    //     component: () => import("@/views/" + 'Book')
    // };
    // 动态添加路由信息，重复的路由会被覆盖掉
    router.addRoute(root)

}


