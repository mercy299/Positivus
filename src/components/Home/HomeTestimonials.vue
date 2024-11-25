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
    </div>
  </div>
</template>

<script setup lang="ts"></script>

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
