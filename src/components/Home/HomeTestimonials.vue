<template>
  <div class="testimonials-wrapper">
    <div class="content">
      <div class="services-text">
        <h1>Testimonials</h1>
        <p>
          Hear from Our Satisfied Clients: Read Our Testimonials<br />
          to Learn More about Our Digital Marketing Services
        </p>
      </div>
      <div class="carousel-wrapper">
        <Carousel :slides="slides" />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import Carousel from '../Default/carousel.vue'

const slides = [
  {
    id: 1,
    content:
      'During the initial consultation, we will discuss your business goals and objectives, target audience, and current marketing efforts. This will allow us to understand your needs and tailor our services to best fit your requirements.',
  },
  {
    id: 2,
    content:
      'Their strategies have been transformative! We’ve seen tremendous growth in our online presence and engagement thanks to their expertise in digital marketing.',
  },
  {
    id: 3,
    content:
      'Excellent service! Their team is responsive, knowledgeable, and genuinely cares about delivering results that matter.',
  },
]
</script>

<style scoped>
.content {
  max-width: var(--max-content-width);
  font-family: var(--font-family);
  margin: auto;
}
.services-text {
  display: flex;
  gap: 30px;
  padding: 4em 0;
  align-items: center;
}
.services-text h1 {
  background-color: #b9ff66;
  font-size: 40px;
  font-weight: 400;
  padding: 3px;
  margin: 0;
  border-radius: 10px;
}
.services-text p {
  font-size: 18px;
}
</style>
