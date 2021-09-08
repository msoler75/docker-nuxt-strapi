<template>
  <div>
      <h1>
        ¡Nuxt-Strapi project! 
      </h1>
      <p>
        La frase es: {{frase}}
      </p>
  </div>
</template>

<script>
export default {
  async asyncData ({$strapi}) {
    const Frase = await $strapi.find('frase')
    return { frase: Frase.frase }
  }
}
</script>
