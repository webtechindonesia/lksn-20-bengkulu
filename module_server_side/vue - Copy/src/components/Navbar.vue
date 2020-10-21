<template>
    <div class="navbar navbar-light bg-primary">
        <div></div>
        <div><h4 class="text-white">Yuk Pilih</h4></div>
        <div><p class="d-inline-block text-white">{{me}}</p> | <a href="#" class="text-white" @click.prevent="logout">Logout</a></div>
    </div>
</template>
<script>
import axios from "axios"
export default {
    data() {
        
        return {
            form:{},
            me : ''
        }
    },
    mounted() {
        this.name()
    },
    methods: {
        async name(){
            let respon= await axios.post('http://139.59.108.33:10018/api/auth/me',this.form,{  headers: { Authorization: 'Bearer ' + localStorage.token}})
            this.me = respon.data.username
        },
        async logout(){
            try{
                await axios.post('http://139.59.108.33:10018/api/auth/logout',this.form,{  headers: { Authorization: 'Bearer ' + localStorage.token}})
                this.$router.push({ name: 'Login'});
            }catch(e){
                console.log(e);
            }
        }
    },
}
</script>