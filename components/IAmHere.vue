<template>
  <button @click="$emit('i-am-here')">
    Click Me
  </button>
</template>

<script>
export default {
  name: 'IAmHere'
}
</script>
