<template>
  <div class="working-process-wrapper">
    <div class="content">
      <div class="services-text">
        <h1>Our Working Process</h1>
        <p>Step-by-Step Guide to Achieving <br />Your Buisness Goals</p>
      </div>
      <div class="working-process-flex">
        <Collapsible
          v-for="(workingProcess, index) in workingProcesses"
          :index="index"
          :title="workingProcess.title"
          :content="workingProcess.content"
        />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import Collapsible from '../Default/Collapsible.vue'
const workingProcesses = [
  {
    title: 'Consultation',
    content:
      'During the initial consultation, we will discuss your buisness goals and objectives, target audience, and current marketing efforts. This will allow us to understand your needs and tailor our services to best fit your requirements.',
  },
  {
    title: 'Research and Strategy Development',
    content:
      'During the initial consultation, we will discuss your buisness goals and objectives, target audience, and current marketing efforts. This will allow us to understand your needs and tailor our services to best fit your requirements.',
  },
  {
    title: 'Implementation',
    content:
      'During the initial consultation, we will discuss your buisness goals and objectives, target audience, and current marketing efforts. This will allow us to understand your needs and tailor our services to best fit your requirements.',
  },
  {
    title: 'Monitoring and Optimization',
    content:
      'During the initial consultation, we will discuss your buisness goals and objectives, target audience, and current marketing efforts. This will allow us to understand your needs and tailor our services to best fit your requirements.',
  },
  {
    title: 'Reporting and Communication',
    content:
      'During the initial consultation, we will discuss your buisness goals and objectives, target audience, and current marketing efforts. This will allow us to understand your needs and tailor our services to best fit your requirements.',
  },
  {
    title: 'Continual Improvement',
    content:
      'During the initial consultation, we will discuss your buisness goals and objectives, target audience, and current marketing efforts. This will allow us to understand your needs and tailor our services to best fit your requirements.',
  },
]
</script>

<style scoped>
.content {
  max-width: var(--max-content-width);
  font-family: var(--font-family);
  margin: auto;
  padding: 0 20px;
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
.working-process-flex {
  display: flex;
  flex-direction: column;
  gap: 2em;
}

@media (min-width: 758px) and (max-width: 1200px) {
  .services-text {
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;
  }
}
</style>
