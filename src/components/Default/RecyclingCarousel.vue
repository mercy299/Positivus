<template>
  <div>
    <div class="carousel-container">
      <div class="carousel-item" v-for="(item, index) in items" :key="index">
        <slot :item="item" :index="index" />
      </div>
    </div>
    <div class="carousel-navigation">
      <div class="nav-btn go-prev" @click="prev">
        <svg
          width="24"
          height="24"
          viewBox="0 0 24 24"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M22 13.5C22.8284 13.5 23.5 12.8284 23.5 12C23.5 11.1716 22.8284 10.5 22 10.5L22 13.5ZM0.939341 10.9393C0.353554 11.5251 0.353554 12.4749 0.93934 13.0607L10.4853 22.6066C11.0711 23.1924 12.0208 23.1924 12.6066 22.6066C13.1924 22.0208 13.1924 21.0711 12.6066 20.4853L4.12132 12L12.6066 3.51472C13.1924 2.92893 13.1924 1.97918 12.6066 1.3934C12.0208 0.807611 11.0711 0.807611 10.4853 1.3934L0.939341 10.9393ZM22 10.5L2 10.5L2 13.5L22 13.5L22 10.5Z"
            fill="white"
            :fill-opacity="activeCarousel < 1 ? 0.3 : 1"
          />
        </svg>
      </div>
      <div class="carousel-position">
        <span
          v-for="(_, index) in items"
          @click="goToCarousel(index)"
          class="nav-btn"
          :class="{ active: activeCarousel === index }"
        >
          <svg
            width="14"
            height="14"
            viewBox="0 0 14 14"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M7.0099 2.05941L14 0L11.9604 7.0099L14 14L7.0099 11.9604L0 14L2.05941 7.0099L0 0L7.0099 2.05941Z"
            />
          </svg>
        </span>
      </div>
      <div class="nav-btn go-next" @click="next">
        <svg
          width="24"
          height="24"
          viewBox="0 0 24 24"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            d="M2 10.5C1.17157 10.5 0.5 11.1716 0.5 12C0.5 12.8284 1.17157 13.5 2 13.5L2 10.5ZM23.0607 13.0607C23.6464 12.4749 23.6464 11.5251 23.0607 10.9393L13.5147 1.3934C12.9289 0.807613 11.9792 0.807613 11.3934 1.3934C10.8076 1.97919 10.8076 2.92893 11.3934 3.51472L19.8787 12L11.3934 20.4853C10.8076 21.0711 10.8076 22.0208 11.3934 22.6066C11.9792 23.1924 12.9289 23.1924 13.5147 22.6066L23.0607 13.0607ZM2 13.5L22 13.5L22 10.5L2 10.5L2 13.5Z"
            fill="white"
            :fill-opacity="activeCarousel < items.length - 1 ? 1 : 0.3"
          />
        </svg>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { onMounted, ref, type PropType } from 'vue'

const props = defineProps({
  items: {
    type: Array as PropType<any[]>,
    default: [],
  },
})

const activeCarousel = ref(1)

/**
 * Scrolls the selected item into the center of the scroll container.
 * @param index - Index of the item to center.
 */
const scrollToItem = (index: number) => {
  const container = document.querySelector('.carousel-container') as HTMLElement
  const items = document.querySelectorAll('.carousel-item') as NodeListOf<HTMLElement>
  const target = items[index]

  if (container && target) {
    // Calculate the scroll offset
    const containerWidth = container.offsetWidth
    const targetWidth = target.offsetWidth
    const targetLeft = target.offsetLeft
    const scrollPosition = targetLeft - containerWidth / 2 + targetWidth / 2

    // Scroll the container
    container.scrollTo({
      left: scrollPosition,
      behavior: 'smooth',
    })
  }
}

const prev = () => {
  if (activeCarousel.value > 0) {
    activeCarousel.value -= 1
    scrollToItem(activeCarousel.value)
  }
}

const goToCarousel = (index: number) => {
  activeCarousel.value = index
  scrollToItem(activeCarousel.value)
}

const next = () => {
  if (activeCarousel.value < props.items.length - 1) {
    activeCarousel.value += 1
    scrollToItem(activeCarousel.value)
  }
}

onMounted(() => {
  scrollToItem(1)
})
</script>

<style scoped>
.carousel-container {
  position: relative;
  display: flex;
  overflow-x: auto;
  scroll-behavior: smooth;
  background-color: #1c1c1c;
  border-radius: 10px;
  gap: 30px;
  width: 100%; /* Make sure container has a width */
  scrollbar-width: none; /* For Firefox: hide scrollbar */
}

.carousel-container::-webkit-scrollbar {
  display: none; /* For Chrome, Edge: hide scrollbar */
}

.carousel-navigation {
  display: flex;
  gap: 90px;
  justify-self: center;
  margin-top: 100px;
  align-items: center;
}

.carousel-navigation .carousel-position {
  display: flex;
  gap: 30px;
}
.nav-btn {
  cursor: pointer;
}

.carousel-navigation .carousel-position .active path {
  fill: #b9ff66;
}
.carousel-navigation .carousel-position span path {
  fill: white;
}
</style>
