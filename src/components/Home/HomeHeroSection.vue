<template>
  <div class="hero-wrapper">
    <div class="hero-container">
      <div class="hero-text">
        <h1>
          Navigating the <br />
          digital landscape <br />
          for success
        </h1>
        <div class="hero-image-small-screen">
          <img src="../../assets/hero-img.svg" alt="hero-image" />
        </div>
        <p>
          Our digital marketing agency helps buisnesses <br />grow and succeed through a range of
          <br />services including SEO, PPC, social media marketing,<br />
          and content creation.
        </p>
        <button><RouterLink to="/contact"> Book a consultation</RouterLink></button>
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
button {
  border: 1px solid black;
  text-align: center;
  padding: 15px 26px;
  margin: 0%;
  border-radius: 7px;
  background-color: #191a23;
  font-family: 'Space Grotesk', sans-serif;
}
button a {
  text-decoration: none;
  color: white;
}
.hero-image img {
  width: 566.26px;
}
.hero-image-small-screen {
  display: none;
}

@media only screen and (max-width: 768px) {
  .hero-wrapper {
    padding: 0 2em;
  }
  .hero-container {
    font-family: var(--font-family);
    display: flex;
    flex-direction: column-reverse;
    justify-content: space-between;
    max-width: var(--max-content-width);
    margin: auto;
  }
  .hero-image {
    display: none;
  }
  .hero-image-small-screen {
    display: flex;
  }
  .hero-text {
    align-items: center;
    /* text-align: center; */
  }
  .hero-text h1 {
    text-align: center;
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
  .hero-image img {
    width: 400px;
    display: flex;
    justify-content: center;
  }
  /* .hero-image {
    display: none;
  }
  .hero-image-small-screen {
    display: flex;
    justify-content: center;
  } */
}
@media (min-width: 820px) and (max-width: 1035px) {
  .hero-image img {
    width: 400px;
    display: flex;
    justify-content: center;
  }
}
</style>
