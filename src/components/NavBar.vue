<template>
  <header class="navbar-container">
    <nav class="navbar">
      <RouterLink to="/" class="logo-link">
        <img src="../assets/White-logo.svg" alt="Positivus Logo" class="logo" />
      </RouterLink>
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
  </header>
</template>

<script setup lang="ts"></script>

<style>
.navbar-container {
  padding: 0 2em;
}
.navbar {
  max-width: var(--max-content-width);
  margin: auto;
  display: flex;
  justify-content: space-between;
  align-items: center; /* Center vertically */
  padding: 30px 0;
  font-family: var(--font-family);
  font-weight: 200;
}

.logo-link {
  display: flex;
  align-items: center;
  text-decoration: none;
}

nav {
  display: flex;
  justify-content: space-between;
  /* gap:220px; */
  padding: 30px 0;
  font-family: var(--font-family);
  font-weight: 200;
}
.navbar-list-container {
  display: flex;
  gap: 20px;
}
.navbar-list-container button a {
  text-decoration: none;
  color: black;
}
.logo {
  width: 150px;
  display: block;
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

@media (min-width: 100px) and (max-width: 826px) {
  .navbar-container {
    max-width: 767px;
  }
  .navbar-list {
    display: none;
  }
  button {
    border: 1px solid #40833a;
    text-align: center;
    /* padding: 5px 26px; */
    margin: 0%;
    border-radius: 10px;
    background-color: transparent;
    height: 50px;
  }
}
</style>
