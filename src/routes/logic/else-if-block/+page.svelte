<script>
</script>

<p class="text-1xl font-bold ">Multiple conditions can be 'chained' together with else if:</p>
<p class="my-3">
	In Svelte, an application is composed from one or more components. A component is a reusable
	self-contained block of code that encapsulates HTML, CSS and JavaScript that belong together,
	written into a .svelte file. The 'hello world' example in the code editor is a simple component.
</p>
<pre>
&#x276E script &#x276F
	let x = 7;
&#x276E /script &#x276F

&#x2774 #if x > 10 &#x2775
	&#x276E p  &#x276F &#x2774 x &#x2775 is greater than 10 &#x276E /p &#x276F
&#x2774 /if &#x2775

&#x2774 :else if 5 > x &#x2775
    &#x276E p  &#x276F &#x2774 x &#x2775 is less than 5 &#x276E /p &#x276F
&#x2774 :else &#x2775
	&#x276E p  &#x276F &#x2774 x &#x2775 is between 5 and 10 &#x276E /p &#x276F
&#x2774 /if &#x2775
</pre>

<style>
</style>
