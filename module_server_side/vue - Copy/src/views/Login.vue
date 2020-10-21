<template>
    <div id="login" class="container flex align-items-center">
        <div class="alert alert-danger mt-2" role="alert" v-if="errors !== ''">
            {{errors}}
        </div>
        <div class="d-flex justify-content-center">
            <form action="" method="post" @submit.prevent="login">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" aria-describedby="emailHelp" placeholder="Enter username" v-model="form.username">
                    
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" aria-describedby="emailHelp" placeholder="Password" v-model="form.password">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>
            </form>
        </div>
    </div>
</template>
<style scoped>
    form{
        padding-top: 200px;
        width: 500px;
    }
    #login{
        height: 100vh;
    }
</style>
<script>
import axios from 'axios'
export default {
    data() {
        return {
            form : {
                username : '',
                password : ''
            },
            errors: ''
        }
    },
    methods: {
        async login(){
            try{
                let login = await axios.post('http://139.59.108.33:10018/api/auth/login',this.form);
                let token = login.data.access_token
                localStorage.setItem('token',token)
                this.errors = ''
            }catch(e){
                this.errors = e.response.statusText;
            }
        }
    },
}
</script>