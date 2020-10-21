<template>
    <div id="login" class="container flex align-items-center">
        <div class="alert alert-danger mt-2" role="alert" v-if="errors !== ''">
            {{errors}}
        </div>
        <div class="d-flex justify-content-center">
            <form action="" method="post" @submit.prevent="reset" class="mt-5">
                <div class="form-group">
                    <label for="old_password">Old Passwords</label>
                    <input type="password" class="form-control" id="old_password" placeholder="Enter Old Password" v-model="form.old_password">
                    <div v-if="theErrors.old_password" class="mt-2 text-danger">{{ theErrors.old_password[0] }}</div>
                    
                </div>
                <div class="form-group">
                    <label for="password">New Password</label>
                    <input type="password" class="form-control" id="password" placeholder="New Password" v-model="form.new_password">
                    <div v-if="theErrors.old_password" class="mt-2 text-danger">{{ theErrors.new_password[0] }}</div>
                </div>
                <div class="form-group">
                    <label for="confirm">Confirm Password</label>
                    <input type="password" class="form-control" id="confirm" placeholder="Confirm Password" >
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Reset</button>
                </div>
            </form>
        </div>
    </div>
</template>
<script>
import axios from 'axios'
export default {
    data() {
        return {
            form: {
                old_password: '',
                new_password: ''
            },
            errors: '',
            theErrors:[]
        }
    },
    methods: {
        async reset(){
            //let old_password = document.getElementById('old_password')
            let password = document.getElementById('password')
            let confirm = document.getElementById('confirm')
            if(password.value !== confirm.value){
                return this.errors = 'password dan confirim tidak sama'
            }
            try{
                await axios.post('http://139.59.108.33:10018/api/auth/reset_password',this.form,{  headers: { Authorization: 'Bearer ' + localStorage.token}})
                this.$router.push({ name: 'Login'});
            }catch(e){
                this.theErrors = e.response.data.errors;
            }
            this.errors = ''
        }
    },
}
</script>