<script>
	let script = `    import { onMount } from 'svelte';

	let photos = [];

	onMount(async () => {
		const res = await fetch(''/tutorial/api/album');
		photos = await res.json();
	});`;
	let script_app = `import { onMount } from 'svelte';

	let photos = [];

	onMount(async () => {
		const res = await fetch(''/tutorial/api/album');
		photos = await res.json();
	});
`;
	let html = `<h1>Photo album</h1>

<div class="photos">
	{#each photos as photo}
		<figure>
			<img src={photo.thumbnailUrl} alt={photo.title}>
			<figcaption>{photo.title}</figcaption>
		</figure>
	{:else}
		<!-- this block renders when photos.length === 0 -->
		<p>loading...</p>
	{/each}
</div>`;
</script>

<p class="text-1xl font-bold ">
	Every component has a lifecycle that starts when it is created, and ends when it is destroyed.
	There are a handful of functions that allow you to run code at key moments during that lifecycle.
</p>
<p class="text-1xl font-bold my-3">
	The one you'll use most frequently is onMount, which runs after the component is first rendered to
	the DOM. We briefly encountered it earlier when we needed to interact with a canvas element after
	it had been rendered.
</p>

<p class="text-1xl font-bold my-3">
	We'll add an onMount handler that loads some data over the network:
</p>
<pre class="my-2">
{'<'}script{'>'}
{script}
{'<'}/script{'>'}
</pre>

<p class="text-1xl font-bold ">
	It's recommended to put the fetch in onMount rather than at the top level of the script because of
	server-side rendering (SSR). With the exception of onDestroy, lifecycle functions don't run during
	SSR, which means we can avoid fetching data that should be loaded lazily once the component has
	been mounted in the DOM.
</p>
<p class="text-1xl font-bold my-3">
	Lifecycle functions must be called while the component is initialising so that the callback is
	bound to the component instance — not (say) in a setTimeout.
</p>

<p class="text-1xl font-bold ">
	If the onMount callback returns a function, that function will be called when the component is
	destroyed.
</p>
<p class="text-1xl font-bold my-3" style="color: yellow;">Example:</p>

<pre class="my-2">
{'<'}script{'>'}
{script_app}
{'<'}/script{'>'}

{html}
</pre>

<style>
</style>
