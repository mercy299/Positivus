<template>
  <div class="home-logos__wrapper">
    <div class="content">
      <vue-marquee-slider id="marquee-slider" :speed="5000">
        <img src="../../assets/Amazon.svg" alt="logo1" />
        <img src="../../assets/Dribble.svg" alt="logo2" />
        <img src="../../assets/Hubspot.svg" alt="logo3" />
        <img src="../../assets/Notion.svg" alt="logo4" />
        <img src="../../assets/Netflix.svg" alt="logo5" />
        <img src="../../assets/Zoom.svg" alt="logo6" />
      </vue-marquee-slider>
    </div>
  </div>
</template>

<script setup lang="ts">
import { VueMarqueeSlider } from 'vue3-marquee-slider'
import '../../../node_modules/vue3-marquee-slider/dist/style.css'
</script>

<style scoped>
.home-logos__wrapper {
  padding: 0 2em;
}
/* .content {
  display: flex;
  justify-content: space-between;
  max-width: var(--max-content-width);
  margin: auto;
} */
.content img {
  filter: grayscale(100%);
}

@media only screen and (max-width: 768px) {
  .home-logos__wrapper {
    margin-top: 20px;
  }
  /* .content {
    display: flex;
    flex-wrap: wrap;
    gap: 30px;
    margin: auto;
  } */
}
@media (min-width: 500px) and (max-width: 915px) {
  .home-logos__wrapper {
    margin-top: 20px;
  }
  /* .content {
    display: flex;
    flex-wrap: wrap;
    gap: 30px;
  } */
}
</style>
