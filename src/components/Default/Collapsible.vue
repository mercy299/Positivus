<template>
  <div class="collapsible-flex-item" :class="{ active: isActive }">
    <div class="collapsible-flex-item-header">
      <div class="collapsible-flex-item-header-text">
        <h2>0{{ index + 1 }}</h2>
        <h3>{{ title }}</h3>
      </div>
      <div style="cursor: pointer" @click="toggleActive">
        <img src="../../assets/MinusIcon.svg" alt="Working Process" v-if="isActive" />
        <img src="../../assets/PlusIcon.svg" alt="Working Process" v-else />
      </div>
    </div>
    <hr v-if="isActive" />
    <p v-if="isActive">
      {{ content }}
    </p>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'

const props = defineProps({
  title: {
    type: String,
    default: 'Collapsible Item Title',
  },
  content: {
    type: String,
    default: 'Collapsible Item Content',
  },
  index: {
    type: Number,
    default: 0,
  },
})

const isActive = ref(props.index < 1 ? true : false)

const toggleActive = () => {
  isActive.value = !isActive.value
}
</script>

<style scoped>
.collapsible-flex-item p {
  font-size: 18px;
  padding: 2em 0;
}
.collapsible-flex-item {
  background-color: #f3f3f3;
  padding: 1em 3em;
  border-radius: 30px;
  box-shadow: 0px 4px #000000;
}
.collapsible-flex-item.active {
  background-color: #b9ff66;
}
.collapsible-flex-item-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.collapsible-flex-item-header-text {
  display: flex;
  gap: 1em;
  align-items: center;
}
h2 {
  font-size: 50px;
}
h3 {
  font-size: 30px;
  font-weight: 450;
}
</style>
