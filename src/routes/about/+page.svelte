<!-- src/routes/about/+page.svelte -->
<script lang="ts">
  const teamMembers = [
    {
      name: 'Jane Cooper',
      role: 'CEO & Founder',
      bio: 'Leading our vision and strategy.'
    },
    {
      name: 'Alex Smith',
      role: 'CTO',
      bio: 'Driving our technical innovation.'
    }
  ];
</script>

<main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
  <div class="text-center mb-12">
    <h1 class="text-4xl font-bold text-gray-900 mb-4">About Us</h1>
    <p class="text-lg text-gray-600 max-w-2xl mx-auto">
      We're a passionate team dedicated to creating amazing experiences for our users.
      Founded in 2024, we've been pushing the boundaries of what's possible.
    </p>
  </div>

  <div class="bg-gray-50 rounded-lg p-8 mb-12">
    <h2 class="text-2xl font-semibold text-gray-900 mb-6">Our Mission</h2>
    <p class="text-gray-600">
      To deliver exceptional value to our customers through innovative solutions and 
      outstanding service, while maintaining the highest standards of quality and integrity.
    </p>
  </div>

  <div class="grid md:grid-cols-2 gap-8">
    {#each teamMembers as member}
      <div class="bg-white p-6 rounded-lg shadow-sm">
        <h3 class="text-xl font-semibold text-gray-900">{member.name}</h3>
        <p class="text-indigo-600 mb-2">{member.role}</p>
        <p class="text-gray-500">{member.bio}</p>
      </div>
    {/each}
  </div>
</main>