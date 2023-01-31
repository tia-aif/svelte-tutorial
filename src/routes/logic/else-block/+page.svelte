<script>
</script>

<p class="text-1xl font-bold ">
	Since the two conditions — if user.loggedIn and if !user.loggedIn — are mutually exclusive, we can
	simplify this component slightly by using an else block:
</p>

<pre class="my-2">
&#x276E script &#x276F
	let user = &#x2774 loggedIn: false &#x2775;

	function toggle() &#x2774
		user.loggedIn = !user.loggedIn;
	&#x2775
&#x276E /script &#x276F

&#x2774 #if user.loggedIn &#x2775
	&#x276E button on:click= &#x2774 toggle &#x2775 &#x276F
		Log out
	&#x276E /button &#x276F
&#x2774 /if &#x2775

&#x2774 :else &#x2775
	&#x276E button on:click=&#x2774 toggle &#x2775 &#x276F
		Log in
	&#x276E /button &#x276F
&#x2774 /if &#x2775
</pre>

<p class="my-3 text-1xl font-bold">
	A # character always indicates a block opening tag. A / character always indicates a block closing
	tag. A : character, as in &#x2774 :else &#x2775, indicates a block continuation tag. Don't worry —
	you've already learned almost all the syntax Svelte adds to HTML.
</p>

<style>
</style>
