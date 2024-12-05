<template>
  <div class="hero-wrapper">
    <div class="hero-container">
      <div class="hero-text">
        <h1>
          Together for <br />
          Success
        </h1>
        <div class="hero-image-small-screen">
          <img src="../../assets/hero-img.svg" alt="hero-image" />
        </div>
        <p>
          At Positivus, we help buisnesses grow by <br />
          combining creativity, innovation and data- <br />driven strategies. Together we will build
          a future <br />
          of shared success.
        </p>
      </div>
      <div class="hero-image">
        <img src="../../assets/hero-img.svg" alt="hero-image" />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts"></script>

<style scoped>
.hero-wrapper {
  padding: 0 2em;
}
.hero-container {
  font-family: var(--font-family);
  display: flex;
  justify-content: space-between;
  max-width: var(--max-content-width);
  margin: auto;
}
.hero-text h1 {
  font-size: 40px;
  font-weight: 500;
}
.hero-text p {
  font-size: 18px;
  line-height: 28px;
  font-weight: 200;
  padding: 0 0px 20px 0px;
}
.button-wrapper-small-screen {
  display: none;
}
.hero-image img {
  width: 566.26px;
}
.hero-image-small-screen {
  display: none;
}

@media (min-width: 300px) and (max-width: 768px) {
  .hero-wrapper {
    padding: 0 2em;
    margin: auto;
  }
  .hero-container {
    font-family: var(--font-family);
    display: flex;
    flex-direction: column-reverse;
    /* justify-content: space-between; */
    /* max-width: var(--max-content-width); */
    /* margin: auto; */
  }
  .hero-image {
    display: none;
  }
  .hero-image-small-screen {
    display: flex;
    justify-content: center;
  }

  .hero-image-small-screen img {
    width: 350px;
    justify-content: center;
  }
  .hero-text {
    align-items: center;
    /* text-align: center; */
  }
  .hero-text h1,
  p {
    text-align: center;
  }
  .button-wrapper-small-screen {
    display: flex;
    flex-direction: row;
    margin-top: 20px;
    justify-content: center;
  }
  .button-wrapper-small-screen button {
    border-radius: 14px;
    color: white;
    width: 250px;
  }
  .big-screen-btn {
    display: none;
  }
}
@media (min-width: 768px) and (max-width: 830px) {
  .hero-wrapper {
    padding: 0 2em;
  }
  /* .hero-container {
      font-family: var(--font-family);
      display: flex;
      flex-direction: column-r;
      justify-content: space-between;
      max-width: var(--max-content-width);
      margin: auto;
    } */
  .hero-image-small-screen img {
    width: 400px;
    display: flex;
    justify-content: center;
  }
  /* .hero-image img {
      width: 400px;
      display: flex;
      justify-content: center;
    } */
  /* .hero-image {
      display: none;
    }
    .hero-image-small-screen {
      display: flex;
      justify-content: center;
    } */
}
@media (min-width: 830px) and (max-width: 1035px) {
  .hero-image img {
    width: 400px;
    display: flex;
    justify-content: center;
  }
}
@media only screen and (max-width: 913px) {
  .hero-image img {
    width: 300px;
    display: flex;
    justify-content: center;
  }
}
</style>
