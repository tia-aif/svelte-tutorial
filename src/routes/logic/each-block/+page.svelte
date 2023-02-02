<script>
</script>

<p class="text-1xl font-bold ">If you need to loop over lists of data, use an each block:</p>

<pre class="my-2">
&#x276E ul &#x276F
	&#x2774 #each cats as cat &#x2775
		&#x276E li &#x276F &#x276E a target="_blank" href="https://www.youtube.com/watch?v= &#x2774 cat.id &#x2775 " rel="noreferrer" &#x276F
			 &#x2774 cat.name &#x2775 
		&#x276E /a &#x276F &#x276E /li &#x276F
	 &#x2774 /each &#x2775 
&#x276E /ul &#x276F
</pre>

<p class="my-3">
	The expression (cats, in this case) can be any array or array-like object (i.e. it has a length
	property). You can loop over generic iterables with each [...iterable].
</p>

<p class="my-3 text-1xl font-bold">You can get the current index as a second argument, like so:</p>
<pre class="my-2">
&#x276E ul &#x276F
	&#x2774 #each cats as cat, i  &#x2775
		&#x276E li &#x276F &#x276E a target="_blank" href="https://www.youtube.com/watch?v= &#x2774 cat.id &#x2775 " rel="noreferrer" &#x276F
			&#x2774 i + 1 &#x2775 : &#x2774 cat.name &#x2775 
		&#x276E /a &#x276F &#x276E /li &#x276F
	 &#x2774 /each &#x2775 
&#x276E /ul &#x276F
</pre>

<p class="my-3">
	If you prefer, you can use destructuring — each cats as &#x2774 id , name &#x2775 — and replace
	cat.id and cat.name with id and name.
</p>

<p class="my-3 text-2xl font-bold">example:</p>
<pre class="my-2">
&#x276E script &#x276F
	let cats = [
		&#x2774 id: 'J---aiyznGQ', name: 'Keyboard Cat' &#x2775,
		&#x2774 id: 'z_AbfPXTKms', name: 'Maru' &#x2775,
		&#x2774 id: 'OUtn3pvWmpg', name: 'Henri The Existential Cat' &#x2775
	];
&#x276E /script &#x276F

&#x276E h1 &#x276F The Famous Cats of YouTube &#x276E /h1 &#x276F 

&#x276E ul &#x276F
	&#x2774 #each cats as &#x2774 i , name &#x2775 , i  &#x2775
		&#x276E li &#x276F &#x276E a target="_blank" href="https://www.youtube.com/watch?v= &#x2774 id &#x2775 " rel="noreferrer" &#x276F
			&#x2774 i + 1 &#x2775 : &#x2774 name &#x2775 
		&#x276E /a &#x276F &#x276E /li &#x276F
	 &#x2774 /each &#x2775 
&#x276E /ul &#x276F
</pre>

<style>
</style>
