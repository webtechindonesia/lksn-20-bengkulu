<template>
    <div class="navbar navbar-light bg-primary">
        <div></div>
        <div><h4 class="text-white">Yuk Pilih</h4></div>
        <div><p class="d-inline-block text-white">Hr_1</p> | <a href="#" class="text-white" @click.prevent="logout">Logout</a></div>
    </div>
</template>
<script>
import axios from "axios"
export default {
    methods: {
        async logout(){
            try{
                await axios.post('http://139.59.108.33:10018/api/auth/logout',{  headers: { Authorization: 'Bearer ' + localStorage.token}})
                this.$router.push({ name: 'Login'});
            }catch(e){
                console.log(e);
            }
        }
    },
}
</script>