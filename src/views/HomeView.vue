<script setup lang="ts">
import NavBar from '../components/NavBar.vue';
import HomeHeroSection from '../components/Home/HomeHeroSection.vue';
import HomeLogos from '../components/Home/HomeLogos.vue';
import HomeServices from '../components/Home/HomeServices.vue';
</script>

<template>
  <main>
    <NavBar />
    <HomeHeroSection />
    <HomeLogos />
    <HomeServices />
    <h1>Home View</h1>
  </main>
</template>

<style scoped>
main{
  margin: auto;
  width: 90%;
}
</style>
