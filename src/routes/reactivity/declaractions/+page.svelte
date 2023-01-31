<script>
</script>

<p class="text-1xl font-bold my-3">
	Svelte's reactivity not only keeps the DOM in sync with your application's variables as shown in
	the previous section, it can also keep variables in sync with each other using reactive
	declarations. They look like this:
</p>
<pre class="my-2">
let count = 0;
$: doubled = count * 2;
</pre>
<p class="my-3">
	Don't worry if this looks a little alien. It's valid (if unconventional) JavaScript, which Svelte
	interprets to mean 're-run this code whenever any of the referenced values change'. Once you get
	used to it, there's no going back.
</p>
<p class="my-3">Let's use doubled in our markup:</p>
<pre class="my-2">
&#x276E p &#x276F &#x2774 count &#x2775 doubled is &#x2774 doubled &#x2775 &#x276E /p &#x276F
</pre>
<p class="my-3">
	Of course, you could just write &#x2774 count * 2&#x2775 in the markup instead — you don't have to
	use reactive values. Reactive values become particularly valuable when you need to reference them
	multiple times, or you have values that depend on other reactive values.
</p>

<p class="my-3">Example:</p>
<pre class="my-2">
&#x276E script &#x276F
let count = 0;

function handleClick() &#x2774
	count += 1;
&#x2775

$: doubled = count * 2;
    
&#x276E /script &#x276F

&#x276E button on:click= &#x2774 handleClick &#x2775 &#x276F
	Clicked  &#x2774 count &#x2775  &#x2774 count === 1 ? 'time' : 'times'&#x2775
&#x276E /button  &#x276F

&#x276E p &#x276F &#x2774 count &#x2775 doubled is &#x2774 doubled &#x2775 &#x276E /p &#x276F
</pre>

<style>
</style>
