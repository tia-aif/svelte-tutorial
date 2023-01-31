<script>
	import Container from "../../../components/Container.svelte";


</script>


<Container>
	<span class="text-1xl font-bold "
		>This tutorial is designed to get you familiar with the process of writing components. But at
		some point, you'll want to start writing components in the comfort of your own text editor.
		First, you'll need to integrate Svelte with a build tool. We recommend using <a
			href="https://kit.svelte.dev/">SvelteKit</a
		>, which sets up <a href="https://vitejs.dev/">Vite</a> with
		<a href="https://github.com/sveltejs/vite-plugin-svelte/">vite-plugin-svelte</a> for you...p</span
	>
</Container>
<pre class="my-2">
npm create svelte@latest myapp
</pre>

<Container>
	<span class="text-1xl font-bold "
		>There are also a number of <a href="https://sveltesociety.dev/tools">community-maintained</a
		>integrations. Don't worry if you're relatively new to web development and haven't used these
		tools before. We've prepared a simple step-by-step guide,
		<a href="https://svelte.dev/blog/svelte-for-new-developers">Svelte for new developers</a>
		, You'll also want to configure your text editor. There are plugins for many popular editors as well
		as an official
		<a href="https://marketplace.visualstudio.com/items?itemName=svelte.svelte-vscode"
			>VS Code extension</a
		>
	</span>
	<p class="py-2">
		Then, once you've got your project set up, using Svelte components is easy. The compiler turns
		each component into a regular JavaScript class — just import it and instantiate with new:
	</p>

	<pre class="my-2">
import App from './App.svelte';
const app = new App &#x2768&#x2774
	target: document.body,
	props: &#x2774
		// we'll learn about props later
		answer: 42
	&#x2775
&#x2775 &#x2769;
</pre>
</Container>

<style>
</style>
