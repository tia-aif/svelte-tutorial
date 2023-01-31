<script>
</script>

<p class="text-1xl font-bold ">
	By default, when you modify the value of an each block, it will add and remove items at the end of
	the block, and update any values that have changed. That might not be what you want.
</p>
<p class="my-3">
	It's easier to show why than to explain. Click the 'Remove first thing' button a few times, and
	notice what happens: it does not remove the first Thing component, but rather the last DOM node.
	Then it updates the name value in the remaining DOM nodes, but not the emoji.
</p>
<p class="my-3">
	Instead, we'd like to remove only the first Thing component and its DOM node, and leave the others
	unaffected.
</p>
<p class="my-3">To do that, we specify a unique identifier (or "key") for the each block:</p>
<pre>
&#x2774 #each things as thing (thing.id)  &#x2775
	&#x276E Thing name=&#x2774 thing.name &#x2775  / &#x276F
&#x2774 /each &#x2775 
</pre>

<p class="my-3">
	Here, (thing.id) is the key, which tells Svelte how to figure out which DOM node to change when
	the component updates.
</p>

<p class="my-3">Example:</p>
<p class="my-3">Thing.svelte:</p>
<pre>
&#x276E script &#x276F
	let emojis = &#x2774
		apple: "🍎",
        banana: "🍌",
        carrot: "🥕",
        doughnut: "🍩",
        egg: "🥚"
	&#x2775 
    // the name is updated whenever the prop value changes...
    export let name;

    // ...but the "emoji" variable is fixed upon initialisation of the component
    const emoji = emojis[name];
&#x276E /script &#x276F

&#x276E p &#x276F The emoji for &#x2774 name &#x2775  is &#x2774 emoji &#x2775  &#x276E /p &#x276F 
	
</pre>
<p class="my-3">app.svelte:</p>
<pre>
&#x276E script &#x276F
	import Thing from './Thing.svelte';
	let things = [
		&#x2774 id: 1, name: 'apple' &#x2775,
		&#x2774 id: 2, name: 'banana' &#x2775,
		&#x2774 id: 3, name: 'carrot' &#x2775,
		&#x2774 id: 4, name: 'doughnut' &#x2775,
		&#x2774 id: 5, name: 'egg' &#x2775, 
	]
&#x276E /script &#x276F
&#x2774 #each things as thing (thing.id)  &#x2775
	&#x276E Thing name=&#x2774 thing.name &#x2775  / &#x276F
&#x2774 /each &#x2775 
</pre>
<p class="my-3">
	You can use any object as the key, as Svelte uses a Map internally — in other words you could do
	(thing) instead of (thing.id). Using a string or number is generally safer, however, since it
	means identity persists without referential equality, for example when updating with fresh data
	from an API server.
</p>

<style>
</style>
