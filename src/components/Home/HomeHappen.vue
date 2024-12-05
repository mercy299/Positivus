<template>
  <div class="happen-wrapper">
    <div class="content">
      <div class="content-text">
        <h2>Let's make things happen</h2>
        <p>
          Contact us today to learn more about how our digital<br />
          marketing services can help you grow your buisness <br />and succeed online.
        </p>
        <button>Get your free proposal</button>
      </div>
      <div class="content-img">
        <img src="../../assets/happensIcon.svg" alt="happensIcon" />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts"></script>

<style scoped>
.happen-wrapper {
  margin: 40px 0px;
  padding: 0 20px;
}
.content {
  display: flex;
  justify-content: space-between;
  max-width: var(--max-content-width);
  margin: auto;
  background-color: #f3f3f3;
  font-family: var(--font-family);
  border-radius: 30px;
}
.content-text {
  padding: 6em 3em;
}
.content-text h2 {
  font-weight: 500;
  font-size: 30px;
}
button {
  border: 1px solid black;
  text-align: center;
  padding: 16px 36px;
  margin: 0%;
  border-radius: 10px;
  background-color: #191a23;
  color: white;
  font-family: var(--font-family);
}
@media (min-width: 300px) and (max-width: 1002px) {
  .content-img {
    display: none;
  }
  .content {
    display: flex;
    justify-content: center;
  }
  .happen-wrapper {
    padding: 0 20px;
  }
}
</style>
