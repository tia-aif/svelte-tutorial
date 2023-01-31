<script>
</script>

<p class="text-1xl font-bold ">
	At the heart of Svelte is a powerful system of reactivity for keeping the DOM in sync with your
	application state — for example, in response to an event.
</p>
<p class="my-3">
	To demonstrate it, we first need to wire up an event handler. Replace line 9 with this:
</p>

<pre class="my-2">
&#x276E button on:click= &#x2774 incrementCount &#x2775 &#x276F
   Clicked &#x2774 count &#x2775 &#x2774 count === 1 ? 'time' : 'times' &#x2775
&#x276E /button &#x276F
</pre>
<p class="my-3">
	Inside the incrementCount function, all we need to do is change the value of count:
</p>
<pre class="my-2">
let count = 0;

function incrementCount() &#x2774
	count += 1;
&#x2775
</pre>
<p class="my-3">
	Svelte 'instruments' this assignment with some code that tells it the DOM will need to be updated.
</p>

<style>
</style>
