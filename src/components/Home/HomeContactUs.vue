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
            <input type="radio" id="one" value="One" v-model="picked" />
            <label for="one">Say Hi</label>

            <input type="radio" id="two" value="Two" v-model="picked" />
            <label for="two">Get a Quote</label>
          </div>
          <div class="form-inputs">
            <label for="name">Name</label>
            <input v-model="name" placeholder="edit me" />

            <label for="email">Email</label>
            <input v-model="email" placeholder="edit me" />

            <label for="message">Message</label>
            <textarea v-model="message" placeholder="add multiple lines"></textarea>
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
  gap: 25em;
  background-color: #f3f3f3;
  border-radius: 30px;
}
.radio-buttons {
  display: flex;
  gap: 10px;
  padding-bottom: 2em;
  padding-top: 0;
}
.form-inputs {
  display: flex;
  flex-direction: column;
  padding-bottom: 2em;
}
.form-inputs label {
  font-size: 15px;
  padding-top: 1em;
}
.form-inputs textarea {
  height: 15em;
  width: 30em;
  border-radius: 10px;
}
.form-inputs input {
  width: 30em;
  height: 3em;
  border-radius: 5px;
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
</style>
