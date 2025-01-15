<!-- src/routes/contact/+page.svelte -->
<script lang="ts">
  let formData = {
    name: '',
    email: '',
    message: ''
  };

  const handleSubmit = () => {
    // Handle form submission logic here
    console.log('Form submitted:', formData);
  };
</script>

<main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
  <div class="max-w-3xl mx-auto">
    <h1 class="text-4xl font-bold text-gray-900 mb-4 text-center">Contact Us</h1>
    <p class="text-lg text-gray-600 mb-8 text-center">
      Have questions? We'd love to hear from you. Send us a message and we'll respond as soon as possible.
    </p>

    <div class="grid md:grid-cols-2 gap-8">
      <!-- Contact Information -->
      <div class="bg-gray-50 p-6 rounded-lg">
        <h2 class="text-xl font-semibold text-gray-900 mb-4">Get in Touch</h2>
        <div class="space-y-4">
          <div class="flex items-center">
            <svg class="w-6 h-6 text-gray-600 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
            </svg>
            <span class="text-gray-600">contact@example.com</span>
          </div>
          <div class="flex items-center">
            <svg class="w-6 h-6 text-gray-600 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
            </svg>
            <span class="text-gray-600">(555) 123-4567</span>
          </div>
        </div>
      </div>

      <!-- Contact Form -->
      <form class="space-y-6" on:submit|preventDefault={handleSubmit}>
        <div>
          <label for="name" class="block text-sm font-medium text-gray-700">Name</label>
          <input
            type="text"
            id="name"
            bind:value={formData.name}
            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
            required
          />
        </div>

        <div>
          <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
          <input
            type="email"
            id="email"
            bind:value={formData.email}
            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
            required
          />
        </div>

        <div>
          <label for="message" class="block text-sm font-medium text-gray-700">Message</label>
          <textarea
            id="message"
            bind:value={formData.message}
            rows="4"
            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
            required
          ></textarea>
        </div>

        <button
          type="submit"
          class="w-full bg-indigo-600 py-2 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
        >
          Send Message
        </button>
      </form>
    </div>
  </div>
</main>