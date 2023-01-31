<script>
</script>

<p class="text-1xl font-bold ">
	A component that just renders some static markup isn't very interesting. Let's add some data.
</p>
<p class="text-1xl font-bold my-3 ">
	First, add a script tag to your component and declare a name variable:
</p>
<pre class="my-2">
	&#x276E script&#x276F
	     let name = 'world';
    &#x276E /script&#x276F

    &#x276E;h1&#x276F Hello world!&#x276E;/h1&#x276F
</pre>

<p class="text-1xl font-bold mt-2">Then, we can refer to name in the markup:</p>

<pre class="my-2">
    &#x276E;h1&#x276F Hello &#x2774 name &#x2775!&#x276E;/h1&#x276F
</pre>
<p class="text-1xl font-bold my-3 ">
	Inside the curly braces, we can put any JavaScript we want. Try changing name to
	name.toUpperCase() for a shoutier greeting.
</p>

<style>
</style>
