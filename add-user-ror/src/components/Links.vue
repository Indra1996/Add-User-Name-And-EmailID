<template>
  <div>
    <test></test>
    <user></user>
  <nav>
    <ul>
      <li><router-link to="/">Users</router-link></li>
      <li><router-link to="/test">Test</router-link></li>

    </ul>
  </nav>
</div>
</template>
<script >
   import test from './Test'
   import user from './Users'
  export default {
    name: 'links',
    components: {
      user, test
    }
  }

</script>

<style scoped>

</style>
