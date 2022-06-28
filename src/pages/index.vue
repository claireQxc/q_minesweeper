<script setup lang="ts">
import { GamePlay } from '~/composables/logic'

const play = new GamePlay(9, 9, 10)

const now = $(useNow())
const timerMS = $computed(() => Math.round())

</script>

<template>
  <div>
    Minesweeper
    <div p5>
      <div
        v-for="row, y in state"
        :key="y"
        flex="~"
        items-center justify-center
      >
        <mine-block
          v-for="block, x in row"
          :key="x"
          :block="block"
        />
      </div>
    </div>
  </div>
</template>
