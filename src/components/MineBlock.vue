<script setup  lang="ts">
import type { BlockState } from '~/types'
import { isDev } from '~/composables'

defineProps<{ block: BlockState }>()

</script>
<template>
  <button
    flex="~"
    items-center justify-center
    w-10 h-10 m="1px"
    border="0.5 gray-400/10"
    :class="getBlockClass(block)"
    @click="onClick(block)"
    @contextmenu.prevent="onRightClick(block)"
  >
    <template v-if="block.flagged">
      <div i-mdi:flag text-red />
    </template>
    <template v-else-if="block.revealed || dev">
      <div v-if="block.mine" i-mdi:mine />
      <div v-else font-600>
        {{ block.adjacentMines }}
      </div>
    </template>
  </button>
</template>
