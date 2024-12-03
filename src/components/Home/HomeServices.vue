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
        <div class="card">
          <div class="card-text">
            <h2>Search engine <br />optimization</h2>
            <div class="learn-more">
              <img src="../../assets/learn-more-icon.svg" alt="Learn More" />
              <p>Learn More</p>
            </div>
          </div>
          <div class="card-img"><img src="../../assets/cards-1.svg" alt="Cards-1" /></div>
        </div>
        <div class="card2">
          <div class="card-text2">
            <h2>Pay-per-click <br />advertising</h2>
            <div class="learn-more">
              <img src="../../assets/learn-more-icon.svg" alt="Learn More" />
              <p>Learn More</p>
            </div>
          </div>
          <div class="card-img"><img src="../../assets/cards-2.svg" alt="Cards-2" /></div>
        </div>
        <div class="card3">
          <div class="card-text3">
            <h2>Social media <br />marketing</h2>
            <div class="learn-more3">
              <img src="../../assets/learn-more3-icon.svg" alt="Learn More" />
              <p>Learn More</p>
            </div>
          </div>
          <div class="card-img"><img src="../../assets/cards-3.svg" alt="Cards-3" /></div>
        </div>
        <div class="card4">
          <div class="card-text">
            <h2>Email <br />Marketing</h2>
            <div class="learn-more">
              <img src="../../assets/learn-more-icon.svg" alt="Learn More" />
              <p>Learn More</p>
            </div>
          </div>
          <div class="card-img"><img src="../../assets/cards-4.svg" alt="Cards-4" /></div>
        </div>
        <div class="card5">
          <div class="card-text5">
            <h2>Content <br />Creation</h2>
            <div class="learn-more">
              <img src="../../assets/learn-more-icon.svg" alt="Learn More" />
              <p>Learn More</p>
            </div>
          </div>
          <div class="card-img"><img src="../../assets/cards-5.svg" alt="Cards-5" /></div>
        </div>
        <div class="card6">
          <div class="card-text6">
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
  background-color: #f3f3f3;
  width: 550px;
  height: 300px;
  justify-content: space-between;
  padding: 20px;
  border: 1px solid black;
  border-radius: 45px;
  box-shadow: 0px 4px #000000;
}
.card2 {
  display: flex;
  background-color: #b9ff66;
  width: 550px;
  height: 300px;
  justify-content: space-between;
  padding: 20px;
  border: 1px solid black;
  border-radius: 45px;
  box-shadow: 0px 4px #000000;
}
.card3 {
  display: flex;
  background-color: #191a23;
  width: 550px;
  height: 300px;
  justify-content: space-between;
  padding: 20px;
  border: 1px solid black;
  border-radius: 45px;
  box-shadow: 0px 4px #000000;
}
.card4 {
  display: flex;
  background-color: #f3f3f3;
  width: 550px;
  height: 300px;
  justify-content: space-between;
  padding: 20px;
  border: 1px solid black;
  border-radius: 45px;
  box-shadow: 0px 4px #000000;
}
.card5 {
  display: flex;
  background-color: #b9ff66;
  width: 550px;
  height: 300px;
  justify-content: space-between;
  padding: 20px;
  border: 1px solid black;
  border-radius: 45px;
  box-shadow: 0px 4px #000000;
}
.card6 {
  display: flex;
  background-color: #191a23;
  width: 550px;
  height: 300px;
  justify-content: space-between;
  padding: 20px;
  border: 1px solid black;
  border-radius: 45px;
  box-shadow: 0px 4px #000000;
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
.card-text2 {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  padding: 20px;
}
.card-text3 {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  padding: 20px;
}
.card-text4 {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  padding: 20px;
}
.card-text5 {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  padding: 20px;
}
.card-text6 {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  padding: 20px;
}
.card-text h2 {
  font-weight: 450;
  background-color: #b9ff66;
  font-size: 30px;
  padding: 4px;
}
.card-text2 h2 {
  font-weight: 450;
  background-color: #f3f3f3;
  font-size: 30px;
  padding: 4px;
}
.card-text3 h2 {
  font-weight: 450;
  background-color: #f3f3f3;
  font-size: 30px;
  padding: 4px;
}
.card-text4 h2 {
  font-weight: 450;
  background-color: #b9ff66;
  font-size: 30px;
  padding: 4px;
}
.card-text5 h2 {
  font-weight: 450;
  background-color: #f3f3f3;
  font-size: 30px;
  padding: 4px;
}
.card-text6 h2 {
  font-weight: 450;
  background-color: #b9ff66;
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
  .card,
  .card3,
  .card2,
  .card4,
  .card5,
  .card6 {
    margin: auto; /* 1 column on mobile */
  }
  .services-text {
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;
  }
}
@media (min-width: 400px) and (max-width: 768px) {
  .services-cards {
    grid-template-columns: 1fr;
    width: 100%;
  }
  .card,
  .card3,
  .card2,
  .card4,
  .card5,
  .card6 {
    margin: auto;
    width: 400px;
    height: 400px;
  }
  .card-img {
    display: none;
  }
}
</style>
