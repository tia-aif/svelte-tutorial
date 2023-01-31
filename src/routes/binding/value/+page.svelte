<script>
	let script2 = `let name = 'world';
	let yes = false;`;
	let script4 = `
	let scoops = 1;
	let flavours = ['Mint choc chip'];

	let menu = [
		'Cookies and cream',
		'Mint choc chip',
		'Raspberry ripple'
	];

	function join(flavours) {
		if (flavours.length === 1) return flavours[0];
		return '$ {flavours.slice(0, -1).join(', ')} and $ {flavours[flavours.length - 1]}';
	}`;

	let script5 = `	let html = '<p>Write some text!</p>';`;

	let html1 = `<input bind:value={name}>`;
	let html2 = `<input bind:value={name}>
	<input type=checkbox bind:checked={yes}>

<h1>Hello {name}! {yes}</h1>`;
	let html3 = `<textarea bind:value></textarea>`;
	let html4 = `
<select multiple bind:value={flavours}>
	{#each menu as flavour}
		<option value={flavour}>
			{flavour}
		</option>
	{/each}
</select>

{#if flavours.length === 0}
	<p>Please select at least one flavour</p>
{:else if flavours.length > scoops}
	<p>Can't order more flavours than scoops!</p>
{:else}
	<p>
		You ordered {scoops} {scoops === 1 ? 'scoop' : 'scoops'}
		of {join(flavours)}
	</p>
{/if}`;

	let html5 = `<div
	contenteditable="true"
	bind:innerHTML={html}
></div>

<pre>{html}</pre>

< style>
	[contenteditable] {
		padding: 0.5em;
		border: 1px solid #eee;
		border-radius: 4px;
	}
</ style>';`;


	let html6 = `<div bind:clientWidth={w} bind:clientHeight={h}>
	<span style="font-size: {size}px">{text}</span>
</div>`;
</script>

<p class="text-1xl font-bold ">
	As a general rule, data flow in Svelte is top down — a parent component can set props on a child
	component, and a component can set attributes on an element, but not the other way around.
</p>
<p class="text-1xl font-bold my-3">
	Sometimes it's useful to break that rule. Take the case of the input element in this component —
	we could add an on:input event handler that sets the value of name to event.target.value, but it's
	a bit... boilerplatey. It gets even worse with other form elements, as we'll see.
</p>

<pre class="my-2">
{html1}
</pre>
<p class="text-1xl font-bold my-3">
	This means that not only will changes to the value of name update the input value, but changes to
	the input value will update name.
</p>

<p class="text-1xl font-bold mt-3">App.svelte</p>
<pre class="my-2">
{'<'}script{'>'}
{script2}
{'<'}/script{'>'}

{html2}
</pre>

<p class="text-1xl font-bold my-3">
	In cases like these, where the names match, we can also use a shorthand form:
</p>
<pre class="my-2">
{html3}
</pre>

<p class="py-2">
	A select can have a multiple attribute, in which case it will populate an array rather than
	selecting a single value.
</p>

<pre class="my-2">
{'<'}script{'>'}
{script4}
{'<'}/script{'>'}

{html4}
</pre>

<p class="py-2">
	Elements with a contenteditable="true" attribute support textContent and innerHTML bindings:
</p>

<pre class="my-2">
{'<'}script{'>'}
{script5}
{'<'}/script{'>'}

{html5}
</pre>
<p class="py-2">
	Every block-level element has clientWidth, clientHeight, offsetWidth and offsetHeight bindings:
</p>
<pre class="my-2">
{'<'}script{'>'}
let w;
let h;
let size = 42;
let text = 'edit me';
{'<'}/script{'>'}

{html6}
</pre>
<style>
</style>
