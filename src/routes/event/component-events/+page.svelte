<script>
	let script = `import { createEventDispatcher } from 'svelte';

const dispatch = createEventDispatcher();

function sayHello() {
	dispatch('message', {
		text: 'Hello!'
	});
}`;
	let script_app = `import Inner from './Inner.svelte';

function handleMessage(event) {
	alert(event.detail.text);
}`;
	let html = `<button on:click={sayHello}>
	Click to say hello
</button>
`;
	let html_app = `<Inner on:message={handleMessage}/>`;
</script>

<p class="text-1xl font-bold ">
	Components can also dispatch events. To do so, they must create an event dispatcher. Update
	Inner.svelte:
</p>
<pre class="my-2">
{'<'}script{'>'}
{script}
{'<'}/script{'>'}

{html}
</pre>

<p class="text-1xl font-bold my-3">App.svelte:</p>
<pre class="my-2">
{'<'}script{'>'}
{script_app}
{'<'}/script{'>'}

{html_app}
</pre>

<p
		class="text-1xl font-bold my-3">createEventDispatcher must be called when the component is first instantiated — you can't do it later inside e.g. a setTimeout callback. This links dispatch to the component instance.</p>
<p
		class="text-1xl font-bold my-3">Notice that the App component is listening to the messages dispatched by Inner component thanks to the on:message directive. This directive is an attribute prefixed with on: followed by the event name that we are dispatching (in this case, message).</p>
<p
		class="text-1xl font-bold my-3">Without this attribute, messages would still be dispatched, but the App would not react to it. You can try removing the on:message attribute and pressing the button again.</p>
<p
		class="text-1xl font-bold my-3">You can also try changing the event name to something else. For instance, change dispatch('message') to dispatch('myevent') in Inner.svelte and change the attribute name from on:message to on:myevent in the App.svelte component.</p>

<style>
</style>
