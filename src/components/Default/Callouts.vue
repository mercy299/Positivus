<template>
  <div class="callout-wrapper">
    <div class="callout">
      {{ remark }}
    </div>
    <div class="user">
      <div style="color: #b9ffb9">{{ author }}</div>
      <div style="color: #f3f3f3">{{ designation }}</div>
    </div>
  </div>
</template>

<script setup lang="ts">
defineProps({
  width: {
    type: String,
    default: '606px',
  },
  height: {
    type: String,
    default: '266px',
  },
  remark: {
    type: String,
  },
  author: {
    type: String,
  },
  designation: {
    type: String,
  },
})
</script>

<style scoped>
.callout-wrapper {
  width: v-bind(width);
}
.callout {
  position: relative;
  border-radius: 45px;
  width: v-bind(width);
  height: v-bind(height);

  background-color: #191a23;
  border: 1px solid #b9ff66;

  color: #fff;

  padding: 20px 5%;

  display: flex;
  justify-content: center;
  align-items: center;
  box-sizing: border-box;

  font-family: var(--font-family);
  font-weight: 400;
  font-size: 18px;
  line-height: 23px;
}

.callout::before {
  content: '';
  left: 12%;
  height: 35px;
  width: 35px;
  background: #191a23;
  transform: rotate(45deg);
  border-bottom: inherit;
  border-right: inherit;
  box-shadow: inherit;
  position: absolute;
  top: -webkit-calc(100% - 17.35px); /*may require prefix for old browser support*/
  top: calc(100% - 17.35px); /*i.e. half the height*/
}

.user {
  margin-top: 45px;
  margin-left: 14%;
  font-size: 20px;
}
</style>
