<template>
  <div class="footer-container bg-gray-100">
    <div class="footer">
      <div class="footer-header">
        <img src="../assets/Black-logo.svg" alt="whitelogo" />
        <div class="footer-header-links">
          <ul>
            <li><RouterLink to="/about"> About Us </RouterLink></li>
            <li><RouterLink to="/services"> Services </RouterLink></li>
            <li><RouterLink to="/cases"> Use Cases </RouterLink></li>
            <li><RouterLink to="/pricing"> Pricing </RouterLink></li>
            <li><RouterLink to="/blog"> Blog </RouterLink></li>
          </ul>
        </div>
        <div class="footer-header-social-media">
          <img src="../assets/linkedin-white.svg" alt="linkedin" class="social-media-icons" />
          <img src="../assets/twitter.svg" alt="twitter" class="social-media-icons" />
          <img src="../assets/facebook.svg" alt="facebook" class="social-media-icons" />
        </div>
      </div>
      <div class="footer-contact">
        <h1>Contact Us:</h1>
        <div class="footer-contact-form-container">
          <div class="services-text">
            <p>Email: info@positivus.com</p>
            <p>Phone: 555-567-8901</p>
            <p>Address: 1234 Main St, Moonstone City, Stardust State 12345</p>
          </div>
          <div class="footer-form">
            <input type="text" placeholder="Enter your email" />
            <button>Subscribe to news</button>
          </div>
        </div>
        <hr />
      </div>

      <div class="footer-copyright">
        <p>© 2024 Positivus. All rights reserved.</p>
        <p>Privacy Policy</p>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts"></script>

<style scoped>
.footer-container {
  padding: 5em 2em 0em 2em;
}
.footer {
  max-width: var(--max-content-width);
  margin: auto;
  background-color: #191a23;
  font-family: var(--font-family);
  border-radius: 20px 20px 0px 0px;
}
.footer-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 2em;
  color: white;
}
.footer-header-links {
  text-decoration: underline;
}
.footer-header-links ul li a {
  color: white;
}
.footer-header-social-media img {
  padding-right: 1em;
}
.footer-contact {
  /* display: flex; */
  /* gap: 30px; */
  padding: 2em;
  /* align-items: center; */
  /* flex-direction: column; */
}
.services-text {
  color: white;
}
.footer-contact h1 {
  display: inline-block;
  background-color: #b9ff66;
  font-size: 20px;
  font-weight: 400;
  padding: 9px;
  margin: 0;
  border-radius: 10px;
}
.services-text p {
  font-size: 18px;
}
.footer-contact-form-container {
  display: flex;
  gap: 30px;
  padding-bottom: 2em;
}
.footer-form input {
  padding: 1em;
  border-radius: 10px;
  background-color: #292a32;
  border: 1px solid white;
}
.footer-form input::placeholder {
  color: white;
}
.footer-form {
  display: flex;
  background-color: #292a32;
  align-items: center;
  padding: 1em;
  gap: 1em;
}
button {
  border: 1px solid black;
  text-align: center;
  padding: 16px 36px;
  margin: 0%;
  border-radius: 10px;
  background-color: #b9ff66;
  color: #191a23;
  font-family: var(--font-family);
}
.footer-copyright {
  display: flex;
  gap: 2em;
  padding: 0em 2em;
  color: white;
}
.footer-copyright p:nth-child(2) {
  text-decoration: underline;
}
</style>
