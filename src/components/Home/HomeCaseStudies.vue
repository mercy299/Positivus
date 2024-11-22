<template>
  <div class="case-studies-wrapper">
    <div class="content">
      <div class="services-text">
        <h1>Services</h1>
        <p>
          At our digital marketing agency, we offer a wide range of services to <br />
          help your business grow and succeed online. These services include:
        </p>
      </div>
      <div class="words-flex">

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
  padding: 2px;
  margin: 0;
}
.services-text p {
  font-size: 18px;
}
</style>
