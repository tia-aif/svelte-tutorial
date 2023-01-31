<script>
</script>

<p class="text-1xl font-bold ">
	As we've briefly seen already, you can listen to any event on an element with the on: directive:
</p>

<pre class="my-2">
&#x276E div on:mousemove=&#x2774 handleMousemove &#x2775  &#x276F
	The mouse position is &#x2774 m.x &#x2775  x &#x2774 m.y &#x2775 
&#x276E /div &#x276F
</pre>

<p class="text-1xl font-bold my-3">Example:</p>

<pre class="my-2">
&#x276E script &#x276F
	let m = &#x2774 x: 0, y: 0 &#x2775;

	function handleMousemove(event) &#x2774
		m.x = event.clientX;
		m.y = event.clientY;
	&#x2775 
&#x276E /script &#x276F

&#x276E div on:mousemove= &#x2774 handleMousemove &#x2775  &#x276F
	The mouse position is &#x2774 m.x &#x2775 x &#x2774 m.y &#x2775
&#x276E /div &#x276F
</pre>

<style>
</style>
