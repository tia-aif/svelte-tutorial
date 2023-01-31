<script>
</script>

<p class="text-1xl font-bold ">
	Svelte's reactivity is triggered by assignments. Methods that mutate arrays or objects will not
	trigger updates by themselves.
</p>
<p class="my-3">
	In this example, clicking the "Add a number" button calls the addNumber function, which appends a
	number to the array but doesn't trigger the recalculation of sum.
</p>
<p class="my-3">
	One way to fix that is to assign numbers to itself to tell the compiler it has changed:
</p>

<pre class="my-2">
function addNumber()  &#x2774
	numbers.push(numbers.length + 1);
	numbers = numbers;
&#x2775
</pre>
<p class="my-3">You could also write this more concisely using the ES6 spread syntax:</p>
<pre class="my-2">
function addNumber()  &#x2774
	numbers = [...numbers, numbers.length + 1];
&#x2775
</pre>
<p class="my-3">
	The same rule applies to array methods such as pop, shift, and splice and to object methods such
	as Map.set, Set.add, etc.
</p>

<p class="my-3">
	Assignments to properties of arrays and objects — e.g. obj.foo += 1 or array[i] = x — work the
	same way as assignments to the values themselves.
</p>

<pre class="my-2">
function addNumber()  &#x2774
	numbers = [...numbers, numbers.length + 1];
&#x2775
</pre>

<p class="my-3">
	The same rule applies to array methods such as pop, shift, and splice and to object methods such
	as Map.set, Set.add, etc.
</p>

<pre class="my-2">
function addNumber()  &#x2774
	numbers[numbers.length] = numbers.length + 1;
&#x2775
</pre>

<p class="my-3">However, indirect assignments to references such as this...</p>

<pre class="my-2">
const foo = obj.foo;
foo.bar = 'baz';
</pre>
<p class="my-3">or</p>

<pre class="my-2">
function quox(thing) &#x2774
	thing.foo.bar = 'baz';
&#x2775
quox(obj);
</pre>
<p class="my-3">
	...won't trigger reactivity on obj.foo.bar, unless you follow it up with obj = obj.
</p>
<p class="my-3">
	A simple rule of thumb: the updated variable must directly appear on the left hand side of the
	assignment.
</p>

<style>
</style>
