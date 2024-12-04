<template>
  <div class="teams-wrapper">
    <div class="content">
      <div class="services-text">
        <h1>Teams</h1>
        <p>Step-by-Step Guide to Achieving <br />Your Buisness Goals</p>
      </div>
      <div class="teams-flex">
        <div class="teams-flex-item">
          <div class="teams-flex-item-header">
            <img src="../../assets/face-1.svg" alt="face-1" />
            <div class="teams-flex-item-header-text">
              <span>John Smith</span>
              <span>Ceo And Founder</span>
            </div>
            <img src="../../assets/linkedin.svg" alt="linkedinIcon" height="34px" />
          </div>
          <hr />
          <p>
            10+ years of experience in digital marketing.Expertise in SEO, PPC, and content Strategy
          </p>
        </div>
        <div class="teams-flex-item">
          <div class="teams-flex-item-header">
            <img src="../../assets/face-2.svg" alt="face-2" />
            <div class="teams-flex-item-header-text">
              <span>Jane Doe</span>
              <span>Director of Operations</span>
            </div>
            <img src="../../assets/linkedin.svg" alt="linkedinIcon" height="34px" />
          </div>
          <hr />
          <p>
            7+ years of experience in Project Management and Team Leadership. Strong organizational
            and communication skills
          </p>
        </div>
        <div class="teams-flex-item">
          <div class="teams-flex-item-header">
            <img src="../../assets/face-3.svg" alt="face-3" />
            <div class="teams-flex-item-header-text">
              <span>Michaael Brown</span>
              <span>Senior SEO Specialist</span>
            </div>
            <img src="../../assets/linkedin.svg" alt="linkedinIcon" height="34px" />
          </div>
          <hr />
          <p>
            5+ years of experience in SEO and content creation. Proficient in keyword research and
            on-page optimization
          </p>
        </div>
        <div class="teams-flex-item">
          <div class="teams-flex-item-header">
            <img src="../../assets/face-4.svg" alt="face-4" />
            <div class="teams-flex-item-header-text">
              <span>Emily Johnson</span>
              <span>PPC Manager</span>
            </div>
            <img src="../../assets/linkedin.svg" alt="linkedinIcon" height="34px" />
          </div>
          <hr />
          <p>
            3+ years of experience in paid search advertising. Skilled in campaign management and
            performance analysis
          </p>
        </div>
        <div class="teams-flex-item">
          <div class="teams-flex-item-header">
            <img src="../../assets/face-5.svg" alt="face-5" />
            <div class="teams-flex-item-header-text">
              <span>Brian Williams</span>
              <span>Social Media Specialist</span>
            </div>
            <img src="../../assets/linkedin.svg" alt="linkedinIcon" height="34px" />
          </div>
          <hr />
          <p>
            4+ years of experience in social media marketing. Proficient in creating and scheduling
            content, analyzing metrics, and building engagement
          </p>
        </div>
        <div class="teams-flex-item">
          <div class="teams-flex-item-header">
            <img src="../../assets/face-6.svg" alt="face-6" />
            <div class="teams-flex-item-header-text">
              <span>John Smith</span>
              <span>Content Creator</span>
            </div>
            <img src="../../assets/linkedin.svg" alt="linkedinIcon" height="34px" />
          </div>
          <hr />
          <p>
            2+ years of experience in writing and editing Skilled in creating compelling,
            SEO-optimized content for various industries
          </p>
        </div>
      </div>
      <div class="button-wrapper">
        <button>See all team members</button>
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
  padding: 4px;
  margin: 0;
  border-radius: 10px;
}
.services-text p {
  font-size: 18px;
}
.teams-flex {
  margin: auto;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 40px;
}
.teams-flex-item {
  background-color: #f3f3f3;
  padding: 2em;
  border-radius: 30px;
  box-shadow: 0px 4px #000000;
  width: 330px;
  height: 230px;
  border: 1px solid #000000;
}
.teams-flex-item-header {
  display: flex;
  justify-content: space-between;
}
.teams-flex-item-header img {
  justify-self: flex-start;
}
.teams-flex-item-header-text {
  display: flex;
  flex-direction: column;
  justify-content: center;
}
button {
  border: 1px solid black;
  text-align: center;
  padding: 16px 36px;
  margin: 0%;
  border-radius: 10px;
  background-color: #191a23;
  color: white;
  font-family: var(--font-family);
}
.button-wrapper {
  display: flex;
  justify-content: flex-end;
  padding: 2em 0;
}

@media (min-width: 300px) and (max-width: 768px) {
  .content {
    max-width: 767px;
  }
  .services-text {
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;
  }
  .teams-flex {
    margin: auto;
    display: grid;
    grid-template-columns: repeat(1, 1fr);
    gap: 20px;
  }
  .teams-flex-item {
    margin: auto;
  }
  .button-wrapper {
    display: flex;
    justify-content: center;
    padding: 2em 0;
  }
}
@media (min-width: 768px) and (max-width: 810px) {
  .services-text {
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;
  }
  .teams-flex {
    /* margin: auto; */
    display: grid;
    grid-template-columns: repeat(1, 1fr);
    gap: 15px;
    /* justify-content: center;  */
    /* align-items: center; */
  }
  .teams-flex-item {
    margin: auto;
  }
  .button-wrapper {
    display: flex;
    justify-content: center;
    padding: 2em 0;
  }
}
@media (min-width: 810px) and (max-width: 1200px) {
  .services-text {
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;
  }
  .teams-flex {
    /* margin: auto; */
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 5px;
    /* justify-content: center;  */
    /* align-items: center; */
    height: 100vh;
  }

  .teams-flex-item {
    margin: auto;
  }
  .button-wrapper {
    display: flex;
    justify-content: center;
    padding: 2em 0;
  }
}
</style>
