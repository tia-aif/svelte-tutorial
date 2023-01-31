<script>
</script>

<p class="text-1xl font-bold ">
	Ordinarily, strings are inserted as plain text, meaning that characters like &#x276E and &#x276F
	have no special meaning.
</p>
<p class="text-1xl font-bold my-3">
	But sometimes you need to render HTML directly into a component. For example, the words you're
	reading right now exist in a markdown file that gets included on this page as a blob of HTML.
</p>
<p class="text-1xl font-bold my-3">
	In Svelte, you do this with the special &#x2774@html ...&#x2775 tag:
</p>

<pre class="my-2">
&#x276E p &#x276F
	&#x2774 @html string &#x2775
&#x276E /p &#x276F
</pre>

<p class="my-2">
	Svelte doesn't perform any sanitization of the expression inside &#x2774 @html ... &#x2775 before
	it gets inserted into the DOM. In other words, if you use this feature it's critical that you
	manually escape HTML that comes from sources you don't trust, otherwise you risk exposing your
	users to XSS attacks.
</p>

<style>
</style>
