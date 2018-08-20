<template>
  <div class="users">
    <h1> Users </h1>
    <form>
      <input type="text" v-model="newUser.name" placeholder="Enter the name">
      <input type="text" v-model="newUser.email" placeholder="Enter the email Id">
      <input type="button" value="Submit" v-on:click="addUser">
    </form>
    <ul>
      <li v-for="user in users" :key="user.id">
        <input type="checkbox" class="toggle" v-model="user.registered">
        <span :class="{contacted: user.registered}">
        {{user.name}} : {{user.email}}
        <button v-on:click="DeleteUser(user)">X</button>
      </span>
      </li>
    </ul>
  </div>
</template>
<script>
import axios from 'axios'
export default {
  name: 'Users',
  data() {
    return {
      newUser: {},
      users: []
    }
  },
  methods: {
    addUser: function() {
      // console.log('add')
      this.users.push({
        name: this.newUser.name,
        email: this.newUser.email,
        registered: false
      });
      axios.post('http://localhost:3000/controls', { name: this.newUser.name, email: this.newUser.email})
  .then(function (response) {
    console.log(response);
  }).catch(function (error) {
    console.log(error);
  })
    },
    DeleteUser: function(user) {
      this.users.splice(this.users.indexOf(user), 1);
    }
  },
  created: function() {
    // this.$http.get('https://jsonplaceholder.typicode.com/users')
    //   .then(function(response) {
    //     this.users = response.data;
    //   });
  }
}

</script>
<style scoped>
.contacted {
  text-decoration: line-through;
}

</style>
