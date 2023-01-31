<script>
	let html = `<Keypad bind:value={pin} on:submit={handleSubmit}/>`;
	let html1 = `
<h1 style="color: {pin ? '#333' : '#ccc'}">{view}</h1>

<Keypad bind:value={pin} on:submit={handleSubmit}/>`;
	let html2 = `
<div class="keypad">
	<button on:click={select(1)}>1</button>
	<button on:click={select(2)}>2</button>
	<button on:click={select(3)}>3</button>
	<button on:click={select(4)}>4</button>
	<button on:click={select(5)}>5</button>
	<button on:click={select(6)}>6</button>
	<button on:click={select(7)}>7</button>
	<button on:click={select(8)}>8</button>
	<button on:click={select(9)}>9</button>

	<button disabled={!value} on:click={clear}>clear</button>
	<button on:click={select(0)}>0</button>
	<button disabled={!value} on:click={submit}>submit</button>
</div>

< style>
	.keypad {
		display: grid;
		grid-template-columns: repeat(3, 5em);
		grid-template-rows: repeat(4, 3em);
		grid-gap: 0.5em
	}

	button {
		margin: 0
	}
</ style>`;
	let script1 = `
	import Keypad from './Keypad.svelte';

	let pin;
	$: view = pin ? pin.replace(/\d(?!$)/g, '•') : 'enter your pin';

	function handleSubmit() {
		alert('submitted $ {pin}');
	}`;
	let script2 = `import { createEventDispatcher } from 'svelte';

	export let value = '';

	const dispatch = createEventDispatcher();

	const select = num => () => value += num;
	const clear  = () => value = '';
	const submit = () => dispatch('submit');`;
</script>

<p class="text-1xl font-bold ">
	Just as you can bind to properties of DOM elements, you can bind to component props. For example,
	we can bind to the value prop of this Keypad component as though it were a form element:
</p>
<pre class="my-2">
{html}
</pre>
<p class="text-1xl font-bold my-3">
	Now, when the user interacts with the keypad, the value of pin in the parent component is
	immediately updated.
</p>
<p class="text-1xl font-bold my-3">
	Use component bindings sparingly. It can be difficult to track the flow of data around your
	application if you have too many of them, especially if there is no 'single source of truth'.
</p>

<p class="text-1xl font-bold mt-3">Keypad.svelte</p>
<pre class="my-2">
{'<'}script{'>'}
{script2}
{'<'}/script{'>'}

{html2}
</pre>
<p class="text-1xl font-bold mt-3">App.svelte</p>
<pre class="my-2">
{'<'}script{'>'}
{script1}
{'<'}/script{'>'}

{html1}
</pre>

<style>
</style>
