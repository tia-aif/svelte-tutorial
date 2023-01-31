<script>
</script>

<p class="text-1xl font-bold ">
	If you have an object of properties, you can 'spread' them onto a component instead of specifying
	each one:
</p>

<pre class="my-2">
&#x276E Info  &#x2774 ...pkg &#x2775/ &#x276F
</pre>
<p class="my-3">
	Conversely, if you need to reference all the props that were passed into a component, including
	ones that weren't declared with export, you can do so by accessing $$props directly. It's not
	generally recommended, as it's difficult for Svelte to optimise, but it's useful in rare cases.
</p>

<p class="text-1xl font-bold ">Example</p>

<p class="text-1xl font-bold ">Info.svelte</p>
<pre class="my-2">

&#x276E script &#x276F
	export let name;
	export let version;
	export let speed;
	export let website;
&#x276E /script &#x276F

&#x276E p &#x276F
	The &#x276E code &#x276F &#x2774 name &#x2775 &#x276E /code &#x276F package is &#x2774 speed &#x2775 fast.
	Download version &#x2774 version &#x2775 from &#x276E a href="https://www.npmjs.com/package/ &#x2774 name &#x2775" &#x276F npm &#x276E /a &#x276F
	and &#x276E  href=&#x2774 website &#x2775 &#x276F learn more here &#x276E /a &#x276F
&#x276E /p &#x276F
</pre>

<p class="text-1xl font-bold ">Info.svelte</p>
<pre class="my-2">

&#x276E script &#x276F
	export let name;
	export let version;
	export let speed;
	export let website;
&#x276E /script &#x276F

&#x276E p &#x276F
	The &#x276E code &#x276F &#x2774 name &#x2775 &#x276E /code &#x276F package is &#x2774 speed &#x2775 fast.
	Download version &#x2774 version &#x2775 from &#x276E a href="https://www.npmjs.com/package/ &#x2774 name &#x2775" &#x276F npm &#x276E /a &#x276F
	and &#x276E  href=&#x2774 website &#x2775 &#x276F learn more here &#x276E /a &#x276F
&#x276E /p &#x276F
</pre>

<p class="text-1xl font-bold ">app.svelte</p>
<pre class="my-2">

&#x276E script &#x276F
	import Info from './Info.svelte';
	const pkg = &#x2774 
		name: 'svelte',
		version: 3,
		speed: 'blazing',
		website: 'https://svelte.dev'
	&#x2775;
&#x276E /script &#x276F

&#x276E Info  &#x2774 ...pkg &#x2775/ &#x276F
</pre>

<style>
</style>
