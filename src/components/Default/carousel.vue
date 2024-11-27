<template>
  <div class="carousel-wrapper">
    <transition-group class="carousel" tag="div" name="slide">
      <div
        class="carousel-item"
        v-for="(slide, index) in slides"
        :key="index"
        :class="{ active: index === activeSlide }"
      >
        {{ slide }}
      </div>
    </transition-group>
    <div class="carousel-buttons">
      <button class="carousel-button" @click="previous">
        <img src="../../assets/Long Left Arrow Icon.svg" alt="Carousel" width="24" />
      </button>
      <button class="carousel-button" @click="next">
        <img src="../../assets/Long Right Arrow Icon.svg" alt="Carousel" width="24" />
      </button>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, watch } from 'vue'

const props = defineProps({
  slides: {
    type: Array,
    required: true,
    default: [],
  },
})

// interface Slide {
//   id: number
//   content: string
// }

// const slides = ref<Slide[]>([{ id: 1, content: props.content }])
const activeSlide = ref(0)
const next = () => {
  activeSlide.value = (activeSlide.value + 1) % props.slides.length
}
// const next = () => {
//   const first = slides.value.shift()
//   if (first) {
//     slides.value.push(first)
//     activeSlide.value = slides.value[0].id
//   }
// }

const previous = () => {
  activeSlide.value = (activeSlide.value - 1 + props.slides.length) % props.slides.length
}
// const previous = () => {
//   const last = slides.value.pop()
//   if (last) {
//     slides.value.unshift(last)
//     activeSlide.value = slides.value[0].id
//   }
// }
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
}
</style>
