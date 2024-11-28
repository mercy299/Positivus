<template>
  <div class="carousel-wrapper">
    <div class="carousel">
      <div class="carousel-item">
        {{ slides[activeSlide].content }}
      </div>
    </div>
    <div class="carousel-buttons">
      <button class="carousel-button" @click="previous">
        <img src="../../assets/Long Left Arrow Icon.svg" alt="Previous" width="24" />
      </button>
      <button class="carousel-button" @click="next">
        <img src="../../assets/Long Right Arrow Icon.svg" alt="Next" width="24" />
      </button>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'

const props = defineProps<{
  slides: { content: string }[]
}>()

const activeSlide = ref(0)

const next = () => {
  activeSlide.value = (activeSlide.value + 1) % props.slides.length
}

const previous = () => {
  activeSlide.value = (activeSlide.value - 1 + props.slides.length) % props.slides.length
}
</script>

<style scoped>
.carousel-wrapper {
  display: flex;
  flex-direction: column;
  align-items: center;
}
.carousel {
  display: flex;
  flex-direction: row;
  transition: all 0.3s ease;
}
.carousel-item {
  transition: all 0.3s ease;
  border: 1px dotted greenyellow;
  padding: 3em;
}
</style>
