<script>
  import Header from '$lib/Header.svelte';
  import Section from '$lib/Section.svelte';
  import Footer from '$lib/Footer.svelte';

  let myInfo = {
    title: "Info",
    item1: "Klarixa Joli Ramesh",
    item2: 10, 
    item3: "Tanjong Katong Primary School, Telebort",
   }
let myHobby = {
    title: "Hobbies",
    item1: "Programming 👩‍💻💻",
    item2: "Painting 🎨🖌️",
    item3: "Reading 📚📖"
}
let myPersonality = {
    title: "Personality",
    item1: "Talkative 🗣️💬",
    item2: "Empathetic 🥺🥹",
    item3: "Kind hearted 💞💖"
}
</script>

<style>
  @import url("https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css");

  
</style>

<div class="container mt-5">
  <Header title="My Biography" />
  <Section {...myInfo} />
  <Section {...myHobby} />
  <Section {...myPersonality} />

  <Footer name={myInfo.item1} />
</div>