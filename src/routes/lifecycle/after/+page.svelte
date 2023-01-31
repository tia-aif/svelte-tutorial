<script>
	let script = `let div;
let autoscroll;

afterUpdate(() => {
	if (autoscroll) div.scrollTo(0, div.scrollHeight);
});
`;
</script>

<p class="text-1xl font-bold ">
	The beforeUpdate function schedules work to happen immediately before the DOM is updated.
	afterUpdate is its counterpart, used for running code once the DOM is in sync with your data.
</p>
<p class="text-1xl font-bold my-3">
	Together, they're useful for doing things imperatively that are difficult to achieve in a purely
	state-driven way, like updating the scroll position of an element.
</p>

<p class="text-1xl font-bold my-3">
	This Eliza chatbot is annoying to use, because you have to keep scrolling the chat window. Let's
	fix that.
</p>
<pre class="my-2">
{'<'}script{'>'}
{script}
{'<'}/script{'>'}
</pre>
<p class="text-1xl font-bold ">
	Note that beforeUpdate will first run before the component has mounted, so we need to check for
	the existence of div before reading its properties.
</p>
