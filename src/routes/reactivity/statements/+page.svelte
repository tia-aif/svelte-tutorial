<script>
</script>

<p class="text-1xl font-bold ">
	We're not limited to declaring reactive values — we can also run arbitrary statements reactively.
	For example, we can log the value of count whenever it changes:
</p>
<pre class="my-2">
$: console.log('the count is ' + count);
</pre>
<p class="my-3">You can easily group statements together with a block:</p>
<pre class="my-2">
$:  &#x2774
	console.log('the count is ' + count);
	alert('I SAID THE COUNT IS ' + count);
&#x2775
</pre>
<p class="my-3">You can even put the $: in front of things like if blocks:</p>

<pre class="my-2">
count += 1;$: if (count >= 10) &#x2774
	alert('count is dangerously high!');
	count = 9;
&#x2775
</pre>

<p class="my-3">example:</p>

<pre class="my-2">
&#x276E script &#x276F
	let count = 0;

	$: if (count >= 10)  &#x2774
		alert('count is dangerously high!');
		count = 9;
	&#x2775

	function handleClick()  &#x2774 
		count += 1;
	&#x2775
&#x276E /script &#x276F

&#x276E  button on:click= &#x2774 handleClick&#x2775 &#x276F
	Clicked  &#x2774 count&#x2775   &#x2774 count === 1 ? 'time' : 'times'&#x2775
&#x276E /button &#x276F
</pre>

<style>
</style>
