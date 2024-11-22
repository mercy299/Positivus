<template>
  <div class="working-process-wrapper">
    <div class="content">
      <div class="services-text">
        <h1>Our Working Process</h1>
        <p>
          At our digital marketing agency, we offer a wide range of services to <br />
          help your business grow and succeed online. These services include:
        </p>
      </div>
      <div class="working-process-flex">
        <div class="working-process-flex-item">
          <div class="working-process-flex-item-header">
            <div class="working-process-flex-item-header-text">
              <h2>01</h2>
              <h3>Consultation</h3>
            </div>
            <img src="../../assets/MinusIcon.svg" alt="Working Process" />
          </div>
          <hr />
          <p>
            During the initial consultation, we will discuss your buisness goals and objectives,
            target audience, and current marketing efforts. This will allow us to understand your
            needs and tailor our services to best fit your requirements.
          </p>
        </div>
        <div class="working-process-flex-item">
          <div class="working-process-flex-item-header">
            <div class="working-process-flex-item-header-text">
              <h2>02</h2>
              <h3>Research and Strategy Development</h3>
            </div>
            <img src="../../assets/PlusIcon.svg" alt="Working Process" />
          </div>
        </div>
        <div class="working-process-flex-item">
          <div class="working-process-flex-item-header">
            <div class="working-process-flex-item-header-text">
              <h2>03</h2>
              <h3>Implementation</h3>
            </div>
            <img src="../../assets/PlusIcon.svg" alt="Working Process" />
          </div>
        </div>
        <div class="working-process-flex-item">
          <div class="working-process-flex-item-header">
            <div class="working-process-flex-item-header-text">
              <h2>04</h2>
              <h3>Monitoring and Optimization</h3>
            </div>
            <img src="../../assets/PlusIcon.svg" alt="Working Process" />
          </div>
        </div>
        <div class="working-process-flex-item">
          <div class="working-process-flex-item-header">
            <div class="working-process-flex-item-header-text">
              <h2>05</h2>
              <h3>Reporting And Analaysis</h3>
            </div>
            <img src="../../assets/PlusIcon.svg" alt="Working Process" />
          </div>
        </div>
        <div class="working-process-flex-item">
          <div class="working-process-flex-item-header">
            <div class="working-process-flex-item-header-text">
              <h2>06</h2>
              <h3>Report And Communication</h3>
            </div>
            <img src="../../assets/PlusIcon.svg" alt="Working Process" />
          </div>
        </div>
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
.working-process-flex {
  display: flex;
  flex-direction: column;
  gap: 2em;
}
.working-process-flex-item p {
  font-size: 18px;
  padding: 2em 0;
}
.working-process-flex-item {
  background-color: #f3f3f3;
  padding: 1em 3em;
  border-radius: 30px;
  box-shadow: 0px 4px #000000;
}
.working-process-flex-item:nth-child(1) {
  background-color: #b9ff66;
}
.working-process-flex-item-header {
  display: flex;
  justify-content: space-between;
  /* gap: 1em; */
}
.working-process-flex-item-header-text {
  display: flex;
  gap: 1em;
  align-items: center;
}
h2 {
  font-size: 50px;
}
h3 {
  font-size: 30px;
  font-weight: 450;
}
</style>
