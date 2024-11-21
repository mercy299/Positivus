<template>
  <header class="navbar-container">
    <nav class="navbar">
      <img src="../assets/White-logo.svg" alt="Positivus Logo" class="logo" />
      <div class="navbar-list-container">
      <ul class="navbar-list">
        <li><RouterLink to="/about"> About Us </RouterLink></li>
        <li><RouterLink to="/services"> Services </RouterLink></li>
        <li><RouterLink to="/cases"> Use Cases</RouterLink></li>
        <li><RouterLink to="/pricing"> Pricing </RouterLink></li>
        <li><RouterLink to="/blog"> Blog </RouterLink></li>
      </ul>
      <button><RouterLink to="/contact"> Request a quote</RouterLink></button>
    </div>
    </nav>
    <router-view />
  </header>
</template>

<script setup lang="ts"></script>

<style>
nav {
  display: flex;
  justify-content: space-between;
  /* gap:220px; */
  padding: 30px 0;
  font-family: "Space Grotesk", sans-serif;
  font-weight: 200;

}
.navbar-list-container{
  display: flex;
  gap: 20px;
}
.navbar-list-container button a{
  text-decoration: none;
  color: black;
}
nav img{
  width: 150px;
}
ul {
  display: flex;
  gap: 25px;
}
ul li {
  margin: 0;
  list-style: none;
  padding: 0px;
  /* text-align: center; */
}
ul li a {
  text-decoration: none;
  color: black;
}

button {
  border: 1px solid black;
  text-align: center;
  padding: 5px 26px;
  margin: 0%;
  border-radius: 10px;
  background-color: transparent;
}
</style>
