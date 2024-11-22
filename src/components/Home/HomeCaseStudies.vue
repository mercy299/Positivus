<template>
  <div class="case-studies-wrapper">
    <div class="content">
      <div class="services-text">
        <h1>Case Studies</h1>
        <p>
          Explore Real-Life Examples of Our Proven Digital Marketing <br />
          success through our Case Studies
        </p>
      </div>
      <div class="words-flex">
        <div class="card-text">
          <p>
            For a local resturant, we implemented a targeted PPC campaign that resulted in a 50%
            increase in website trackings and 20% increase in sales.
          </p>
          <div class="learn-more">
            <p>Learn More</p>
            <img src="../../assets/learn-more-icon.svg" alt="Learn More" />
          </div>
        </div>
        <div class="card-text">
          <p>
            For a B2B software company, we developed an SEO strategy that resulted in a first page
            ranking for keywords and a 200% increase in organic traffic.
          </p>
          <div class="learn-more">
            <p>Learn More</p>
            <img src="../../assets/learn-more-icon.svg" alt="Learn More" />
          </div>
        </div>
        <div class="card-text">
          <p>
            For a national retail chain, we created a social media marketing campaign that increased
            followers by 25% and generated a 20% increase in online sales.
          </p>
          <div class="learn-more">
            <p>Learn More</p>
            <img src="../../assets/learn-more-icon.svg" alt="Learn More" />
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
  padding: 2px;
  margin: 0;
}
.services-text p {
  font-size: 18px;
}
.words-flex {
  background-color: #191a23;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 30px;
  padding: 3em 2em;
  border-radius: 40px;
}
.words-flex > *:nth-child(2) {
  border-left: 1px solid #f3f3f3;
  border-right: 1px solid #f3f3f3;
  /* padding: 0 1.7em; */
}
.card-text p {
  color: #f3f3f3;
  padding: 0 4em;
}
.learn-more {
  display: flex;
  gap: 10px;
}
.learn-more p {
  font-size: 18px;
  color: #b9ff66;
}
</style>
