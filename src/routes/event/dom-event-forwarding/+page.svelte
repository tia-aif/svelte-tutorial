<script>
	let script = `import CustomButton from './CustomButton.svelte';

function handleClick() {
	alert('Button Clicked');
}`;
	let html = `<button on:click>
	Click me
</button>
`;
	let html_app = `<CustomButton on:click={handleClick}/>`;
</script>

<p class="text-1xl font-bold ">Event forwarding works for DOM events too.</p>
<p class="text-1xl font-bold my-3">
	We want to get notified of clicks on our CustomButton — to do that, we just need to forward click
	events on the button element in CustomButton.svelte:
</p>
<pre class="my-2">
{html}
</pre>

<p class="text-1xl font-bold my-3">App.svelte:</p>
<pre class="my-2">
{'<'}script{'>'}
{script}
{'<'}/script{'>'}

{html_app}
</pre>

<style>
</style>
