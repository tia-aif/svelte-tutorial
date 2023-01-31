<script>
	let script = `function increment() {
	count.update(n => n + 1);
}`;
	let script1 = `function reset() {
	count.set(0);
}
`;
	let script2 = `import { writable } from 'svelte/store';

export const count = writable(0);
`;
	let script3 = `
	import { count } from './stores.js';

	function reset() {
		count.set(0);
	}
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

	let html3 = `
<button on:click={reset}>
	reset
</button>
`;
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
	Not all application state belongs inside your application's component hierarchy. Sometimes, you'll
	have values that need to be accessed by multiple unrelated components, or by a regular JavaScript
	module.
</p>
<p class="text-1xl font-bold my-3 ">
	In Svelte, we do this with stores. A store is simply an object with a subscribe method that allows
	interested parties to be notified whenever the store value changes. In App.svelte, count is a
	store, and we're setting countValue in the count.subscribe callback.
</p>

<p class="text-1xl font-bold mt-2">
	Click the stores.js tab to see the definition of count. It's a writable store, which means it has
	set and update methods in addition to subscribe.
</p>

<p class="text-1xl font-bold my-3 ">
	Now go to the Incrementer.svelte tab so that we can wire up the + button:
</p>

<pre class="my-2">
{'<'}script{'>'}
{script}
{'<'}/script{'>'}
</pre>
<p class="text-1xl font-bold my-3 ">
	Clicking the + button should now update the count. Do the inverse for Decrementer.svelte.
</p>

<p class="text-1xl font-bold my-3 ">Finally, in Resetter.svelte, implement reset:</p>

<pre class="my-2">
{script1}
</pre>

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
