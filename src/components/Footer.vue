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
        <div>
          <img src="../assets/linkedin.svg" alt="linkedin" class="social-media-icons" />
          />
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts"></script>

<style scoped>
.footer-container {
  padding: 0 2em;
}
.footer {
  max-width: var(--max-content-width);
  margin: auto;
  background-color: blue;
}
</style>
