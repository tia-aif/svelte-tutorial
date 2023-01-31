<script>
	import Container from '../../../components/Container.svelte';
</script>

<p class="text-1xl font-bold ">
	It would be impractical to put your entire app in a single component. Instead, we can import
	components from other files and then use them as though we were including elements.
</p>
<p class="text-1xl font-bold my-3">
	We now present you 2 files in the editor on the right (upper bar) to click on, App.svelte and
	Nested.svelte.
</p>
<p class="text-1xl font-bold my-3">
	Each .svelte file holds a component that is a reusable self-contained block of code that
	encapsulates HTML, CSS, and JavaScript that belong together.
</p>

<p class="text-1xl font-bold mt-3">Nested.svelte</p>
<pre class="my-2">
	&#x276E p &#x276F Nested component text.  &#x276E /p &#x276F
</pre>

<p class="text-1xl font-bold my-3">
	Let's add a &#x276E script &#x276F tag to App.svelte that imports the file (our component)
	Nested.svelte into our app...
</p>
<pre class="my-2">
	&#x276E script &#x276F
	   import Nested from './Nested.svelte';
    &#x276E /script &#x276F
</pre>

<p class="py-2">then use component Nested in the app markup:</p>

<pre class="my-2">
	 &#x276E p &#x276F This is a paragraph.  &#x276E /p &#x276F
     &#x276E Nested/ &#x276F
</pre>

<p class="py-2">Result:</p>

<Container>
	<p>This is a paragraph.</p>
	<p>ested component text.</p>
</Container>

<p class="py-2">
	Notice that even though Nested.svelte has a &#x276E p &#x276F element, the styles from App.svelte
	don't leak in.
</p>
<p class="py-2">
	Also notice that the component name Nested is capitalised. This convention has been adopted to
	allow us to differentiate between user-defined components and regular HTML tags.
</p>

<style>
</style>
