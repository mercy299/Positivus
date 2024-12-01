<template>
  <div class="contact-us-wrapper">
    <div class="content">
      <div class="services-text">
        <h1>Contact Us</h1>
        <p>Connect with us: Let's Discuss Your <br />Digital Marketing Needs</p>
      </div>
      <div class="contact-us-form">
        <form>
          <div class="radio-buttons">
            <div class="radio-wrapper">
              <input type="radio" id="one" value="One" v-model="picked" checked />
              <label for="one">Say Hi</label>
            </div>

            <div class="radio-wrapper">
              <input type="radio" id="two" value="Two" v-model="picked" />
              <label for="two">Get a Quote</label>
            </div>
          </div>
          <div class="form-inputs">
            <div class="form-group">
              <label for="name">Name</label>
              <input v-model="name" placeholder="Name" />
            </div>

            <div class="form-group">
              <label for="email">Email*</label>
              <input v-model="email" placeholder="Email" />
            </div>

            <div class="form-group">
              <label for="message">Message*</label>
              <textarea v-model="message" placeholder="Message"></textarea>
            </div>
          </div>
          <div class="button-wrapper">
            <button>Send message</button>
          </div>
        </form>
        <img src="../../assets/contact-form-img.svg" alt="contact us image" />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'
const picked = ref('')
const message = ref('')
const name = ref('')
const email = ref('')
</script>

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
  padding: 4px;
  margin: 0;
  border-radius: 10px;
}
.services-text p {
  font-size: 18px;
}
.contact-us-form {
  display: flex;
  gap: 24em;
  background-color: #f3f3f3;
  border-radius: 30px;
}
.radio-buttons {
  display: flex;
  gap: 20px;
  padding-bottom: 2em;
  padding-top: 0;
  /* margin: 0.5rem; */
}
.radio-wrapper {
  display: flex;
  align-items: center;
  gap: 10px;
}
.radio-buttons input[type='radio'] {
  appearance: none;
  width: 24px;
  height: 24px;
  border: 2px solid #666;
  border-radius: 50%;
  background-color: #fff;
  cursor: pointer;
  position: relative;
}
.radio-buttons input[type='radio']:checked {
  background-color: #b9ff66;
  border-color: #b9ff66;
}

.radio-buttons input[type='radio']:checked::after {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  width: 12px;
  height: 12px;
  background-color: #fff;
  border-radius: 50%;
  transform: translate(-50%, -50%);
}

.radio-buttons label {
  font-size: 16px;
  cursor: pointer;
}
.form-group {
  flex-direction: column;
  display: flex;
  gap: 10px;
}
.form-inputs {
  display: flex;
  flex-direction: column;
  padding-bottom: 2em;
  gap: 25px;
  font-size: 16px;
}
.form-inputs label {
  font-size: 16px;
  /* padding-top: 1em; */
}
.form-inputs textarea {
  height: 190px;
  width: 100%;
  border-radius: 10px;
  padding-top: 20px;
  font-size: 18px;
}
.form-inputs input {
  width: 100%;
  height: 59px;
  border-radius: 14px;
  border: 1px solid black;
  font-size: 18px;
  /* font-weight: 100; */
}
form {
  padding: 3em 0em 0em 5em;
}
button {
  border: 1px solid black;
  text-align: center;
  padding: 16px 153px;
  margin: 0%;
  border-radius: 10px;
  background-color: #191a23;
  color: white;
  font-family: var(--font-family);
}
.form-inputs input,
textarea {
  padding-left: 30px;
}
</style>
