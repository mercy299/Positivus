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
      '"We have been working with Positivus for the past year and have seen a significant increase in website traffic and leads as a result of their efforts. The team is professional, responsive, and truly cares about the success of our business. We highly recommend Positivus to any company looking to grow their online presence."',
  },
  {
    id: 2,
    content:
      'During the initial consultation, we will discuss your buisness goals and objectives, target audience, and current marketing efforts. This will allow us to understand your needs and tailor our services to best fit your requirements.',
  },
  {
    id: 3,
    content:
      'Contact us today to learn more about how our digitalmarketing services can help you grow your buisness and succeed online.',
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
  color: #333;
}
</style>
