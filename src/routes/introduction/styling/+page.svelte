<script>
</script>

<p class="text-1xl font-bold ">
	Just like in HTML, you can add a &#x276E style &#x276F tag to your component. Let's add some
	styles to the &#x276E p &#x276F element:
</p>

<pre class="my-2">
&#x276E p &#x276F This is a paragraph. &#x276E /p &#x276F

&#x276E style &#x276F
	p &#x2774 
		color: purple;
		font-family: 'Comic Sans MS', cursive;
		font-size: 2em;
	&#x2775
&#x276E /style &#x276F
</pre>

<p class="text-1xl font-bold my-3">
	That's better. But Svelte is giving us a warning:Importantly, these rules are scoped to the
	component. You won't accidentally change the style of &#x276E p &#x276F elements elsewhere in your
	app, as we'll see in the next step.&#x276E /p &#x276F
</p>

<style>
</style>
