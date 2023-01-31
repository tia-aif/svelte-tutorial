<script>
	let script = `function handleClick() {
		alert('no more alerts')
	}`;
	let html = `<button on:click|once={handleClick}>
	Click me
</button>
`;
</script>

<p class="text-1xl font-bold ">
	DOM event handlers can have modifiers that alter their behaviour. For example, a handler with a
	once modifier will only run a single time:
</p>
<pre class="my-2">
{'<'}script{'>'}
	{script}
{'<'}/script{'>'}

{html}
</pre>
<p class="my-3">The full list of modifiers:</p>
<div class="pl-5">
	<ul>
		<li>
			1. preventDefault — calls event.preventDefault() before running the handler. Useful for
			client-side form handling, for example.
		</li>
		<li>
			2. prstopPropagation — calls event.stopPropagation(), preventing the event reaching the next
			element
		</li>
		<li>3. nonpassive — explicitly set passive: false</li>
		<li>
			4. capture — fires the handler during the capture phase instead of the bubbling phase (MDN
			docs)
		</li>
		<li>5. once — remove the handler after the first time it runs</li>
		<li>6. self — only trigger handler if event.target is the element itself</li>
		<li>
			7. trusted — only trigger handler if event.isTrusted is true. I.e. if the event is triggered
			by a user action.
		</li>
	</ul>
</div>
<p class="my-3">You can chain modifiers together, e.g. on:click|once|capture=?</p>

<style>
</style>
