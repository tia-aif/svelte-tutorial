<script>
</script>

<p class="text-1xl font-bold ">
	Most web applications have to deal with asynchronous data at some point. Svelte makes it easy to
	await the value of <a
		href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises"
		>promises
	</a> directly in your markup:
</p>
<pre>
&#x2774 #await promise &#x2775 
	&#x276E p &#x276F ...waiting&#x276E /p &#x276F 
&#x2774 :then number &#x2775 
	&#x276E p &#x276F The number is &#x2774 number &#x2775 &#x276E /p &#x276F 
&#x2774 :catch error &#x2775 
	&#x276E p style="color: red" &#x276F &#x2774 error.message &#x2775 &#x276E /p &#x276F 
&#x2774 /await &#x2775  
</pre>
<p class="my-3">
	Only the most recent promise is considered, meaning you don't need to worry about race conditions.
</p>
<p class="my-3">
	If you know that your promise can't reject, you can omit the catch block. You can also omit the
	first block if you don't want to show anything until the promise resolves:
</p>

<pre>
&#x2774 #await promise then number &#x2775 
	&#x276E p &#x276F the number is &#x2774 number &#x2775 &#x276E /p &#x276F 
&#x2774 /await &#x2775  
</pre>

<p class="my-3">Example:</p>
<pre>
&#x276E script &#x276F

	async function getRandomNumber() &#x2774
		const res = await fetch(`/tutorial/random-number`);
		const text = await res.text();

		if (res.ok) &#x2774
			return text;
		&#x2775  else &#x2774
			throw new Error(text);
		&#x2775 
	&#x2775 
	
	let promise = getRandomNumber();

	function handleClick() &#x2774
		promise = getRandomNumber();
	&#x2775 
&#x276E /script &#x276F

&#x276E button on:click= &#x2774 handleClick &#x2775  &#x276F
	generate random number
&#x276E /button &#x276F

&#x2774 #await promise &#x2775 
	&#x276E p>...waiting&#x276E /p &#x276F
&#x2774 :then number &#x2775 
	&#x276E p &#x276FThe number is &#x2774 number &#x2775 &#x276E /p &#x276F
&#x2774 :catch error &#x2775 
	&#x276E p style="color: red" &#x276F&#x2774 error.message &#x2775 &#x276E /p &#x276F
&#x2774 /await &#x2775 
	
</pre>

<style>
</style>
