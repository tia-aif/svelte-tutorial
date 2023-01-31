<script>
</script>

<p class="text-1xl font-bold ">
	HTML doesn't have a way of expressing logic, like conditionals and loops. Svelte does.
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

&#x2774 #if !user.loggedIn &#x2775
	&#x276E button on:click=&#x2774 toggle &#x2775 &#x276F
		Log in
	&#x276E /button &#x276F
&#x2774 /if &#x2775
</pre>

<p class="my-3 text-1xl font-bold">Try it — update the component, and click on the buttons.</p>

<style>
</style>
