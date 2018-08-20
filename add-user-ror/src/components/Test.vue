<template>
  <div class = "test">
  <input type="test" v-model="title"><br />
  <h1>{{title}}</h1>
  <p>{{user.firstName}}</p>
  <button v-on:click="greet">Say Greeting</button>
  <br />
  <input type v-on:keyup="greetk" v-on:keyup.enter="hitme">
  <br />
  <label>First Name</label><input type="text" v-model="user.firstName">
  <br />
  <label>Last Name</label><input type="text" v-model="user.lastName">
  <p>{{fullName}}</p>
  </div>
</template>

<script>

  export default {
     name: 'Test',
     data() {
     return{
     title: 'Hello World',
     user: {
        firstName: 'John',
        lastName: 'Bose'
      }
     }
     },
     methods: {
     greet: function(){
     alert("Hello there")
     },
     greetk: function(e){
     console.log(e.target.value)
     },
     hitme: function(){
     console.log("you pressed enter")
     }
     },
     computed: {
         fullName: function(){
         return this.user.firstName+ ' ' +this.user.lastName
         }
     }
  }
  </script>

  <style scoped >
  </style>
