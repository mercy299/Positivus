<template>
  <div class="services-cards-wrapper">
    <div class="services-container">
      <div class="services-text">
        <h1>Services</h1>
        <p>
          At our digital marketing agency, we offer a wide range of services to <br />
          help your business grow and succeed online. These services include:
        </p>
      </div>
      <div class="services-cards">
        <div class="card grey">
          <div class="card-text">
            <h2>Search engine <br />optimization</h2>
            <div class="learn-more">
              <img src="../../assets/learn-more-icon.svg" alt="Learn More" />
              <p>Learn More</p>
            </div>
          </div>
          <div class="card-img"><img src="../../assets/cards-1.svg" alt="Cards-1" /></div>
        </div>
        <div class="card green">
          <div class="card-text">
            <h2>Pay-per-click <br />advertising</h2>
            <div class="learn-more">
              <img src="../../assets/learn-more-icon.svg" alt="Learn More" />
              <p>Learn More</p>
            </div>
          </div>
          <div class="card-img"><img src="../../assets/cards-2.svg" alt="Cards-2" /></div>
        </div>
        <div class="card dark">
          <div class="card-text">
            <h2>Social media <br />marketing</h2>
            <div class="learn-more3">
              <img src="../../assets/learn-more3-icon.svg" alt="Learn More" />
              <p>Learn More</p>
            </div>
          </div>
          <div class="card-img"><img src="../../assets/cards-3.svg" alt="Cards-3" /></div>
        </div>
        <div class="card grey">
          <div class="card-text">
            <h2>Email <br />Marketing</h2>
            <div class="learn-more">
              <img src="../../assets/learn-more-icon.svg" alt="Learn More" />
              <p>Learn More</p>
            </div>
          </div>
          <div class="card-img"><img src="../../assets/cards-4.svg" alt="Cards-4" /></div>
        </div>
        <div class="card green">
          <div class="card-text">
            <h2>Content <br />Creation</h2>
            <div class="learn-more">
              <img src="../../assets/learn-more-icon.svg" alt="Learn More" />
              <p>Learn More</p>
            </div>
          </div>
          <div class="card-img"><img src="../../assets/cards-5.svg" alt="Cards-5" /></div>
        </div>
        <div class="card dark-variant">
          <div class="card-text">
            <h2>Analytics and <br />Tracking</h2>
            <div class="learn-more3">
              <img src="../../assets/learn-more3-icon.svg" alt="Learn More" />
              <p>Learn More</p>
            </div>
          </div>
          <div class="card-img"><img src="../../assets/cards-6.svg" alt="Cards-6" /></div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts"></script>

<style scoped>
.services-cards-wrapper {
  padding: 0 2em;
  font-family: var(--font-family);
}
.services-container {
  max-width: var(--max-content-width);
  margin: auto;
}
.services-cards {
  margin: auto;
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 40px;
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
.card {
  display: flex;
  /* width: 550px; */
  /* height: 300px; */
  justify-content: space-between;
  padding: 20px;
  border: 1px solid black;
  border-radius: 45px;
  box-shadow: 0px 4px #000000;
  box-sizing: border-box;
}

.card.grey {
  background-color: #f3f3f3;
}
.card.green {
  background-color: #b9ff66;
}
.card.dark,
.card.dark-variant {
  background-color: #191a23;
}
.card-img {
  /* width: 210px; */
  height: 170px;
  display: flex;
  padding: 50px 30px;
}
.card-text {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  padding: 20px;
}
.card.grey .card-text h2,
.card.dark-variant .card-text h2 {
  background-color: #b9ff66;
}
.card.green .card-text h2,
.card.dark .card-text h2 {
  background-color: #f3f3f3;
}

.card-text h2 {
  font-weight: 450;
  font-size: 30px;
  padding: 4px;
}
.learn-more {
  display: flex;
  gap: 10px;
}
.learn-more3 {
  display: flex;
  gap: 10px;
}
.learn-more3 p {
  color: #f3f3f3;
}

/* @media (max-width: 1200px) {
  .services-cards {
    grid-template-columns: repeat(2, 1fr);
  }
} */

@media (min-width: 768px) and (max-width: 1200px) {
  .services-cards {
    grid-template-columns: 1fr;
    width: 100%;
  }
  .card {
    margin: auto; /* 1 column on mobile */
  }
  .services-text {
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;
  }
}
@media (min-width: 300px) and (max-width: 768px) {
  .services-cards {
    grid-template-columns: 1fr;
    width: 100%;
  }
  .card {
    margin: auto;
    width: 100%;
    height: 300px;
  }
  .card-img {
    display: none;
  }
  .services-text {
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;
  }
}
</style>
