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
        <div class="footer-header-social-media-small-screen">
          <img src="../assets/linkedin-white.svg" alt="linkedin" class="social-media-icons" />
          <img src="../assets/twitter.svg" alt="twitter" class="social-media-icons" />
          <img src="../assets/facebook.svg" alt="facebook" class="social-media-icons" />
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
  border-radius: 30px 30px 0px 0px;
}
.footer-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 2em 3em;
  color: white;
}
.footer-header-links ul li:hover {
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
  padding: 2em 3em;
  /* align-items: center; */
  /* flex-direction: column; */
}
.footer-header-social-media-small-screen {
  display: none;
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
  gap: 60px;
  margin-bottom: 25px;
}
.footer-form input {
  padding: 1em;
  border-radius: 10px;
  background-color: #292a32;
  border: 1px solid black;
  width: 250px;
}
.footer-form input::placeholder {
  color: white;
}
.footer-form {
  display: flex;
  background-color: #292a32;
  align-items: center;
  padding: 2em;
  gap: 1em;
  border-radius: 10px;
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
  gap: 3em;
  padding: 0em 3em 2em 3em;
  color: white;
}
.footer-copyright p:nth-child(2) {
  text-decoration: underline;
}

@media (min-width: 300px) and (max-width: 849px) {
  .footer-container {
    background-color: #191a23;
    font-family: var(--font-family);
    border-radius: 30px 30px 0px 0px;
    margin-top: 30px;
    padding: 20px 10px 0px 10px;
    display: flex; /* Enable flexbox */
    justify-content: center; /* Center horizontally */
    align-items: center; /* Center vertically */
  }
  .footer {
    max-width: 767px;
    width: 100%;
    margin: auto;
    display: flex;
    flex-direction: column; /* Stack children */
    align-items: center; /* Center children horizontally */
    text-align: center; /* Center text */
  }
  .footer-header {
    display: flex;
    flex-direction: column;
    align-items: center; /* Center text */
    padding: 0px;
  }
  .footer-header-links ul {
    display: flex;
    flex-direction: column;
    gap: 10px;
    font-size: 20px;
    padding-left: 0px;
    list-style: none;
  }
  .footer-header-social-media {
    display: none;
  }
  .footer-contact {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 0px;
    margin-top: 20px;
  }
  .footer-contact-form-container {
    display: flex;
    flex-direction: column;
    align-items: center; /* Center content */
  }
  .footer-form {
    display: flex;
    flex-direction: column;
    align-items: center; /* Center content */
    gap: 16px;
    padding: 1em;
  }
  .footer-header-social-media-small-screen {
    display: flex;
    gap: 10px;
    justify-content: center; /* Center icons */
    margin-bottom: 30px;
    width: 100%;
  }
  .footer-copyright {
    display: flex;
    flex-direction: column;
    gap: 3px;
    color: white;
    align-items: center; /* Center content */
    text-align: center;
  }
  .footer-copyright p:nth-child(2) {
    text-decoration: none;
  }
  hr {
    width: 100%; /* Ensure horizontal line scales */
  }
}

@media (min-width: 768px) and (max-width: 980px) {
  .footer-container {
    padding: 5em 2em 0em 2em;
  }
  .footer {
    max-width: 980px;
    margin: auto;
  }
  .footer-contact-form-container {
    display: flex;
    flex-direction: column;
  }
  .footer-form {
    justify-content: center;
  }
  .footer-header-social-media {
    display: none;
  }
  .footer-container {
    margin-top: 20px;
  }
}
</style>
