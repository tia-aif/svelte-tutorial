<script>
	let script = `    import { onDestroy } from 'svelte';

	let counter = 0;
	const interval = setInterval(() => counter += 1, 1000);

	onDestroy(() => clearInterval(interval));`;
	let script_utils = `import { onDestroy } from 'svelte';

export function onInterval(callback, milliseconds) {
	const interval = setInterval(callback, milliseconds);

	onDestroy(() => {
		clearInterval(interval);
	});
}
`;
	let script_time = `
	import { onInterval } from './utils.js';

	let counter = 0;
	onInterval(() => counter += 1, 1000);
`;
</script>

<p class="text-1xl font-bold ">To run code when your component is destroyed, use onDestroy.</p>
<p class="text-1xl font-bold my-3">
	For example, we can add a setInterval function when our component initialises, and clean it up
	when it's no longer relevant. Doing so prevents memory leaks.
</p>

<pre class="my-2">
{'<'}script{'>'}
{script}
{'<'}/script{'>'}
</pre>

<p class="text-1xl font-bold ">
	While it's important to call lifecycle functions during the component's initialisation, it doesn't
	matter where you call them from. So if we wanted, we could abstract the interval logic into a
	helper function in utils.js...
</p>

<pre class="my-2">
{'<'}script{'>'}
{script_utils}
{'<'}/script{'>'}
</pre>

<p class="text-1xl font-bold my-3">.and import it into our component:</p>

<pre class="my-2">
{'<'}script{'>'}
{script_time}
{'<'}/script{'>'}
</pre>

<p class="text-1xl font-bold ">
	Open and close the timer a few times and make sure the counter keeps ticking and the CPU load
	increases. This is due to a memory leak as the previous timers are not deleted. Don't forget to
	refresh the page before solving the example.
</p>

<style>
</style>
