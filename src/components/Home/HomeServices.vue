<template>
    <div class="services-container">
        <div class="services-text">
            <h1>Services</h1>
            <p>Our digital marketing agency helps buisnesses grow and succeed through a range of services
                including SEO, PPC, social media marketing, and content creation.
            </p>
        </div>
        <div class="services-cards">
            <div class="card">
                <div class="card-text">
                    <h2>Search engine optimization</h2>
                    <div class="learn-more">
                        <img src="../../assets/learn-more-icon.svg" alt="Learn More" />
                        <p>Learn More</p>
                    </div>
                </div>
                <img class="card-img" src="../../assets/cards-1.svg" alt="Cards-1" />
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">

</script>

<style scoped>
.card{
    display: flex;
    background-color: #F3F3F3;
    width: 600px;
    height: 310px;
}
.card-img{
    width: 210px;
    height: 170px;
}
.card-text{
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.learn-more{
    display: flex;
    gap: 10px;
}
</style>
