<script>
</script>

<p class="text-1xl font-bold ">You can also declare event handlers inline:</p>
<pre class="my-2">
&#x276E div  on:mousemove="&#x2774 e => m = &#x2774  x: e.clientX, y: e.clientY  &#x2775 &#x2775" &#x276F
	The mouse position is &#x2774 m.x &#x2775 x &#x2774 m.y &#x2775
&#x276E /div &#x276F
</pre>
<p class="text-1xl font-bold my-3">
	The quote marks are optional, but they're helpful for syntax highlighting in some environments.
</p>
<p class="text-1xl font-bold my-3">
	In some frameworks you may see recommendations to avoid inline event handlers for performance
	reasons, particularly inside loops. That advice doesn't apply to Svelte — the compiler will always
	do the right thing, whichever form you choose.
</p>
<p class="text-1xl font-bold my-3">Example:</p>

<pre class="my-2">
&#x276E script &#x276F
	let m = &#x2774 x: 0, y: 0 &#x2775;
&#x276E /script &#x276F

&#x276E div on:mousemove= "&#x2774 e => m = &#x2774 x: e.clientX, y: e.clientY &#x2775 &#x2775"  &#x276F
	The mouse position is &#x2774 m.x &#x2775 x &#x2774 m.y &#x2775
&#x276E /div &#x276F
</pre>

<style>
</style>
