<script>
	let script = `const unsubscribe = count.subscribe(value => {
	countValue = value;
});`;
	let script1 = `
	import { onDestroy } from 'svelte';
	import { count } from './stores.js';
	import Incrementer from './Incrementer.svelte';
	import Decrementer from './Decrementer.svelte';
	import Resetter from './Resetter.svelte';

	let countValue;

	const unsubscribe = count.subscribe(value => {
		countValue = value;
	});

	onDestroy(unsubscribe);
`;
	let script2 = `import { writable } from 'svelte/store';

export const count = writable(0);
`;
	let script3 = `
	import { count } from './stores.js';
	import Incrementer from './Incrementer.svelte';
	import Decrementer from './Decrementer.svelte';
	import Resetter from './Resetter.svelte';
`;
	let script4 = `
	import { count } from './stores.js';

	function increment() {
		count.update(n => n + 1);
	}
`;
	let script5 = `
	import { count } from './stores.js';

	function decrement() {
		count.update(n => n - 1);
	}
`;
	let script6 = ` count } from './stores.js';
	import Incrementer from './Incrementer.svelte';
	import Decrementer from './Decrementer.svelte';
	import Resetter from './Resetter.svelte';

	let countValue;

	count.subscribe(value => {
		countValue = value;
	});
`;

	let html3 = `<h1>The count is {$count}</h1>`;
	let html4 = `
<button on:click={increment}>
	+
</button>
`;
	let html5 = `
<button on:click={decrement}>
	-
</button>
`;
	let html6 = `
<h1>The count is {countValue}</h1>

<Incrementer/>
<Decrementer/>
<Resetter/>
`;
</script>

<p class="text-1xl font-bold ">
	The app in the previous example works, but there's a subtle bug — the store is subscribed to, but
	never unsubscribed. If the component was instantiated and destroyed many times, this would result
	in a memory leak.
</p>
<p class="text-1xl font-bold my-3 ">Start by declaring unsubscribe in App.svelte:</p>

<pre class="my-2">
{'<'}script{'>'}
{script}
{'<'}/script{'>'}
</pre>
<p class="text-1xl font-bold my-3 ">Calling a subscribe method returns an unsubscribe function.</p>

<p class="text-1xl font-bold my-3 ">
	You now declared unsubscribe, but it still needs to be called, for example through the onDestroy
	lifecycle hook:
</p>

<pre class="my-2">
{'<'}script{'>'}
{script1}
{'<'}/script{'>'}
</pre>

<p class="text-1xl font-bold my-3 ">
	It starts to get a bit boilerplatey though, especially if your component subscribes to multiple
	stores. Instead, Svelte has a trick up its sleeve — you can reference a store value by prefixing
	the store name with $:
</p>

<p class="text-2xl font-bold my-3 ">Example:</p>
<p class="text-2xl font-bold my-3 ">Example:</p>

<p class="text-1xl font-bold my-3 ">Store.js:</p>

<pre class="my-2">
{script2}
</pre>

<p class="text-1xl font-bold my-3 ">Resertter.svelte:</p>

<pre class="my-2">
{'<'}script{'>'}
{script3}
{'<'}/script{'>'}

{html3}
</pre>

<p class="text-1xl font-bold my-3 ">Incrementer.svelte:</p>

<pre class="my-2">
{'<'}script{'>'}
{script4}
{'<'}/script{'>'}

{html4}
</pre>

<p class="text-1xl font-bold my-3 ">Decrementer.svelte:</p>

<pre class="my-2">
{'<'}script{'>'}
{script5}
{'<'}/script{'>'}

{html5}
</pre>

<p class="text-1xl font-bold my-3 ">App.svelte:</p>

<pre class="my-2">
{'<'}script{'>'}
{script6}
{'<'}/script{'>'}

{html6}
</pre>

<style>
</style>
