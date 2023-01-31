<script>
	let html = `<canvas
	bind:this={canvas}
	width={32}
	height={32}
></canvas>`;

	let html1 = `
<canvas
	bind:this={canvas}
	width={32}
	height={32}
></canvas>

< style>
	canvas {
		width: 100%;
		height: 100%;
		background-color: #666;
		-webkit-mask: url(/svelte-logo-mask.svg) 50% 50% no-repeat;
		mask: url(/svelte-logo-mask.svg) 50% 50% no-repeat;
	}
</ style>
`;

	let html2 = `<InputField bind:this={field} />`;
	let html3 = `<button on:click="{() => field.focus()}">
	Focus field
</button>`;
	let script = `
	import { onMount } from 'svelte';

	let canvas;

	onMount(() => {
		const ctx = canvas.getContext('2d');
		let frame = requestAnimationFrame(loop);

		function loop(t) {
			frame = requestAnimationFrame(loop);

			const imageData = ctx.getImageData(0, 0, canvas.width, canvas.height);

			for (let p = 0; p < imageData.data.length; p += 4) {
				const i = p / 4;
				const x = i % canvas.width;
				const y = i / canvas.width >>> 0;

				const r = 64 + (128 * x / canvas.width) + (64 * Math.sin(t / 1000));
				const g = 64 + (128 * y / canvas.height) + (64 * Math.cos(t / 1000));
				const b = 128;

				imageData.data[p + 0] = r;
				imageData.data[p + 1] = g;
				imageData.data[p + 2] = b;
				imageData.data[p + 3] = 255;
			}

			ctx.putImageData(imageData, 0, 0);
		}

		return () => {
			cancelAnimationFrame(frame);
		};
	});`;
</script>

<p class="text-1xl font-bold my-3">
	Just as you can bind to DOM elements, you can bind to component instances themselves. For example,
	we can bind the instance of InputField to a variable named field in the same way we did when
	binding DOM Elements
</p>
<pre class="my-2">
{'<'}script{'>'}
  let field;
{'<'}/script{'>'}

{html2}
</pre>

<p class="text-1xl font-bold my-3">how to use</p>
<pre class="my-2">
{html3}
</pre>
<p class="text-1xl font-bold ">
	Note that we can't do (field.focus) since field is undefined when the button is first rendered and
	throws an error.
</p>
<p class="text-1xl font-bold ">
	The readonly this binding applies to every element (and component) and allows you to obtain a
	reference to rendered elements. For example, we can get a reference to a canvas element:
</p>
<p class="text-1xl font-bold my-3">App.svelte.</p>
<pre class="my-2">
{'<'}script{'>'}
{script}
{'<'}/script{'>'}

{html1}
</pre>
<p class="text-1xl font-bold my-3">
	Note that the value of canvas will be undefined until the component has mounted, so we put the
	logic inside the onMount lifecycle function.
</p>
