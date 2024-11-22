<template>
  <div class="home-logos__wrapper">
    <div class="content">
      <img src="../../assets/Amazon.svg" alt="logo1" />
      <img src="../../assets/Dribble.svg" alt="logo2" />
      <img src="../../assets/Hubspot.svg" alt="logo3" />
      <img src="../../assets/Notion.svg" alt="logo4" />
      <img src="../../assets/Netflix.svg" alt="logo5" />
      <img src="../../assets/Zoom.svg" alt="logo6" />
    </div>
  </div>
</template>

<script setup lang="ts"></script>

<style scoped>
.home-logos__wrapper {
  padding: 0 2em;
}
.content {
  display: flex;
  justify-content: space-between;
  max-width: var(--max-content-width);
  margin: auto;
}
.content img {
  filter: grayscale(100%);
}
</style>
