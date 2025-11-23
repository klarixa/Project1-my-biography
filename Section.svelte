<script>
  export let title;
  export let item1;
  export let item2;
  export let item3;
</script>

<div class="card">
  <div class="card-body">
    <h3 class="card-title bg-primary text-white text-center p-3">{title}</h3>
    <p class="card-text">{item1}</p>
    <p class="card-text">{item2}</p>
    <p class="card-text">{item3}</p>
  </div>
</div>

<style>
  .card {
    background-color: lightcyan;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
  }
  </style>