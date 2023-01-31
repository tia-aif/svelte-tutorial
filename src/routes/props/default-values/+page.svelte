<script>
</script>

<p class="text-1xl font-bold ">We can easily specify default values for props in Nested.svelte:</p>

<pre class="my-2">
&#x276E script &#x276F
  export let answer = 'a mystery';
&#x276E /script &#x276F
&#x276E p &#x276F The answer is &#x2774 answer &#x2775 &#x276E /p &#x276F
</pre>
<p class="my-3">
	If we now add a second component without an answer prop, it will fall back to the default:
</p>
<pre class="my-2">
&#x276E Nested answer= &#x2774 42 &#x2775/ &#x276F
&#x276E Nested/ &#x276F
</pre>

<p class="my-3">Resault:</p>
<pre class="my-2">
The answer is 42

The answer is a mystery
</pre>

<style>
</style>
