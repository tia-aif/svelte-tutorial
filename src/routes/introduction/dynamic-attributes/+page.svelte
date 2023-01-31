<script>
</script>

<p class="text-1xl font-bold ">
	You can use curly braces to control element attributes, just like you use them to control text.
</p>

<p class="text-1xl font-bold my-3">Our image is missing a src attribute — let's add one:</p>
<pre class="my-2">
&#x276E img src= &#x2774 src &#x2775/&#x276F
</pre>

<p class="text-1xl font-bold my-3">That's better. But Svelte is giving us a warning:</p>

<pre class="my-2">
A11y: &#x276E img &#x276F  element should have an alt attribute
</pre>

<p class="text-1xl font-bold my-3">
	When building web apps, it's important to make sure that they're accessible to the broadest
	possible userbase, including people with (for example) impaired vision or motion, or people
	without powerful hardware or good internet connections. Accessibility (shortened to a11y) isn't
	always easy to get right, but Svelte will help by warning you if you write inaccessible markup.
</p>
<p class="text-1xl font-bold my-3">
	In this case, we're missing the alt attribute that describes the image for people using
	screenreaders, or people with slow or flaky internet connections that can't download the image.
	Let's add one:
</p>
<pre class="my-2">
&#x276E img src= &#x2774 src &#x2775 alt="A man dances." /&#x276F
</pre>
<p class="text-1xl font-bold my-3">
	We can use curly braces inside attributes. Try changing it to "&#x2774 name &#x2775 dances." —
	remember to declare a name variable in the &#x276E script &#x276F block.
</p>

<style>
</style>
