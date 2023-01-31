<script>
	let script = `
	import { createEventDispatcher } from 'svelte';

	const dispatch = createEventDispatcher();

	function sayHello() {
		dispatch('message', {
			text: 'Hello!'
		});
	}`;
	let script_app = `	import Outer from './Outer.svelte';

	function handleMessage(event) {
		alert(event.detail.text);
	}`;
	let script_out = `	import Inner from './Inner.svelte';`;
	let html = `<button on:click={sayHello}>
	Click to say hello
</button>`;
	let html_out = `<Inner on:message/>`;
	let html_app = `<Outer on:message={handleMessage}/>`;
</script>

<p class="text-1xl font-bold ">
	Unlike DOM events, component events don't bubble. If you want to listen to an event on some deeply
	nested component, the intermediate components must forward the event.
</p>
<p class="text-1xl font-bold my-3">
	In this case, we have the same App.svelte and Inner.svelte as in the previous chapter, but there's
	now an Outer.svelte component that contains Inner .
</p>
<p class="text-1xl font-bold my-3">
	One way we could solve the problem is adding createEventDispatcher to Outer.svelte, listening for
	the message event, and creating a handler for it:
</p>
<p class="text-1xl font-bold my-3">Inner.svelte:</p>
<pre class="my-2">
{'<'}script{'>'}
{script}
{'<'}/script{'>'}

{html}
</pre>

<p class="text-1xl font-bold my-3">Out.svelte:</p>
<pre class="my-2">
{'<'}script{'>'}
{script_out}
{'<'}/script{'>'}
{html_out}
</pre>
<p class="text-1xl font-bold my-3">App.svelte:</p>
<pre class="my-2">
{'<'}script{'>'}
{script_app}
{'<'}/script{'>'}

{html_app}
</pre>
<style>
</style>
