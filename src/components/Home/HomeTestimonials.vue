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
        <RecyclingCarousel :items="testimonials">
          <template #default="{ item, index }">
            <Callouts
              :remark="item.text"
              :index="index"
              :author="item.author"
              :designation="item.designation"
            />
          </template>
        </RecyclingCarousel>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import Callouts from '../Default/Callouts.vue'
import RecyclingCarousel from '../Default/RecyclingCarousel.vue'

interface Testimonial {
  text: string
  author: string
  designation: string
}

const testimonials: Testimonial[] = [
  {
    text: 'We have been working with Positivus for the past year and have seen a significant increase in website traffic and leads as a result of their efforts. The team is professional, responsive, and truly cares about the success of our business. We highly recommend Positivus to any company looking to grow their online presence.',
    author: 'John Smith',
    designation: 'Marketing Director at XYZ Corp',
  },
  {
    text: 'Positivus has helped us boost our online visibility significantly. Their approach to digital marketing is comprehensive, and their team is always ready to address our concerns.',
    author: 'Jane Doe',
    designation: 'CEO at ABC Ltd',
  },
  {
    text: 'Thanks to Positivus, our sales have increased dramatically. Their expertise in SEO and content marketing is unparalleled.',
    author: 'Michael Lee',
    designation: 'CTO at 123 Enterprises',
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

.carousel-wrapper {
  padding: 5em 0;
  background-color: #191a23;
  border-radius: 20px;
}

@media only screen and (max-width: 768px) {
  .services-text {
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  .services-text p {
    justify-content: center;
  }
}
@media (min-width: 768px) and (max-width: 1200px) {
  .services-text {
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;
  }
}
</style>
