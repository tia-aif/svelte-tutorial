<script>
	import { page } from '$app/stores';
	import { showSidebar } from '../store/state';
	import Header from './Header.svelte';
	import './styles.css';
	const active = 'M19.5 8.25l-7.5 7.5-7.5-7.5';
	const inactive = 'M8.25 4.5l7.5 7.5-7.5 7.5';
	$: color = $page.url.pathname.toString();
	const slidebar = [
		{
			title: 'About',
			path: '/about',
			icon: 'M10.125 2.25h-4.5c-.621 0-1.125.504-1.125 1.125v17.25c0 .621.504 1.125 1.125 1.125h12.75c.621 0 1.125-.504 1.125-1.125v-9M10.125 2.25h.375a9 9 0 019 9v.375M10.125 2.25A3.375 3.375 0 0113.5 5.625v1.5c0 .621.504 1.125 1.125 1.125h1.5a3.375 3.375 0 013.375 3.375M9 15l2.25 2.25L15 12',
			items: []
		},
		{
			title: 'Sverdle',
			path: '/sverdle',
			icon: 'M14.25 6.087c0-.355.186-.676.401-.959.221-.29.349-.634.349-1.003 0-1.036-1.007-1.875-2.25-1.875s-2.25.84-2.25 1.875c0 .369.128.713.349 1.003.215.283.401.604.401.959v0a.64.64 0 01-.657.643 48.39 48.39 0 01-4.163-.3c.186 1.613.293 3.25.315 4.907a.656.656 0 01-.658.663v0c-.355 0-.676-.186-.959-.401a1.647 1.647 0 00-1.003-.349c-1.036 0-1.875 1.007-1.875 2.25s.84 2.25 1.875 2.25c.369 0 .713-.128 1.003-.349.283-.215.604-.401.959-.401v0c.31 0 .555.26.532.57a48.039 48.039 0 01-.642 5.056c1.518.19 3.058.309 4.616.354a.64.64 0 00.657-.643v0c0-.355-.186-.676-.401-.959a1.647 1.647 0 01-.349-1.003c0-1.035 1.008-1.875 2.25-1.875 1.243 0 2.25.84 2.25 1.875 0 .369-.128.713-.349 1.003-.215.283-.4.604-.4.959v0c0 .333.277.599.61.58a48.1 48.1 0 005.427-.63 48.05 48.05 0 00.582-4.717.532.532 0 00-.533-.57v0c-.355 0-.676.186-.959.401-.29.221-.634.349-1.003.349-1.035 0-1.875-1.007-1.875-2.25s.84-2.25 1.875-2.25c.37 0 .713.128 1.003.349.283.215.604.401.96.401v0a.656.656 0 00.658-.663 48.422 48.422 0 00-.37-5.36c-1.886.342-3.81.574-5.766.689a.578.578 0 01-.61-.58v0z',
			items: []
		},
		{
			title: 'Widgets',
			path: '/widgets',
			icon: 'M6.429 9.75L2.25 12l4.179 2.25m0-4.5l5.571 3 5.571-3m-11.142 0L2.25 7.5 12 2.25l9.75 5.25-4.179 2.25m0 0L21.75 12l-4.179 2.25m0 0l4.179 2.25L12 21.75 2.25 16.5l4.179-2.25m11.142 0l-5.571 3-5.571-3',
			items: [{ idx: 1, text: 'a', path: '' }]
		},
		{
			title: 'Introduction',
			path: '/introduction',
			icon: '',
			items: [
				{ idx: 1, text: 'Basic', path: '/introduction/basic' },
				{ idx: 2, text: 'Adding Data', path: '/introduction/adding-data' },
				{ idx: 3, text: 'Dynamic Attributes', path: '/introduction/dynamic-attributes' },
				{ idx: 4, text: 'Styling', path: '/introduction/styling' },
				{ idx: 5, text: 'Nested Components', path: '/introduction/nested-components' },
				{ idx: 6, text: 'HTML tags', path: '/introduction/html-tags' },
				{ idx: 7, text: 'Making App', path: '/introduction/making-app' }
			]
		},
		{
			title: 'Reactivity',
			path: '/reactivity',
			icon: '',
			items: [
				{ idx: 1, text: 'Assignments', path: '/reactivity/assignments' },
				{ idx: 2, text: 'Declaractions', path: '/reactivity/declaractions' },
				{ idx: 3, text: 'Objects', path: '/reactivity/objects' },
				{ idx: 4, text: 'Statements', path: '/reactivity/statements' }
			]
		},
		{
			title: 'Props',
			path: '/props',
			icon: '',
			items: [
				{ idx: 1, text: 'Declaring Props', path: '/props/declaring-props' },
				{ idx: 2, text: 'Default Values', path: '/props/default-values' },
				{ idx: 3, text: 'Spread Props', path: '/props/spread-props' }
			]
		},
		{
			title: 'Logic',
			path: '/logic',
			icon: '',
			items: [
				{ idx: 1, text: 'If Block', path: '/logic/if-block' },
				{ idx: 2, text: 'Else Block', path: '/logic/else-block' },
				{ idx: 3, text: 'Else-if Block', path: '/logic/else-if-block' },
				{ idx: 4, text: 'Each Block', path: '/logic/each-block' },
				{ idx: 5, text: 'Keyed Each Block', path: '/logic/keyed-each-block' },
				{ idx: 6, text: 'Await Block', path: '/logic/await-block' }
			]
		},
		{
			title: 'Event',
			path: '/event',
			icon: '',
			items: [
				{ idx: 1, text: 'DOM Events', path: '/event/dom-events' },
				{ idx: 2, text: 'Inline Events', path: '/event/inline-events' },
				{ idx: 3, text: 'Event Modifiers', path: '/event/event-modifiers' },
				{ idx: 4, text: 'Component Events', path: '/event/component-events' },
				{ idx: 5, text: 'Event Forwarding', path: '/event/event-forwarding' },
				{ idx: 6, text: 'DOM Event Forwarding', path: '/event/dom-event-forwarding' }
			]
		},
		{
			title: 'Lifecycle',
			path: '/lifecycle',
			icon: '',
			items: [
				{ idx: 1, text: 'OnMount', path: '/lifecycle/onmount' },
				{ idx: 2, text: 'OnDestroy', path: '/lifecycle/ondestroy' },
				{ idx: 3, text: 'Before', path: '/lifecycle/before' },
				{ idx: 4, text: 'After', path: '/lifecycle/after' },
				{ idx: 5, text: 'Tick', path: '/lifecycle/tick' }
			]
		},
		{
			title: 'Binding',
			path: '/binding',
			icon: '',
			items: [
				{ idx: 1, text: 'Value', path: '/binding/value' },
				{ idx: 2, text: 'This', path: '/binding/this' },
				{ idx: 3, text: 'Components', path: '/binding/components' }
			]
		},
		{
			title: 'Store',
			path: '/store',
			icon: '',
			items: [
				{ idx: 1, text: 'Writable', path: '/store/writable' },
				{ idx: 2, text: 'Readable', path: '/store/readable' },
				{ idx: 3, text: 'Subscriptions', path: '/store/subscriptions' },
				{ idx: 4, text: 'Derived', path: '/store/derived' },
				{ idx: 5, text: 'Custom', path: '/store/custom' },
				{ idx: 6, text: 'Store Binding', path: '/store/store-binding' }
			]
		},
		{
			title: 'Motions',
			path: '/motions',
			icon: '',
			items: [
				{ idx: 1, text: 'Tweened', path: '/motions/tweened' },
				{ idx: 2, text: 'Spring', path: '/motions/spring' }
			]
		}
	];
</script>

<div class="app">
	<Header />
	<main>
		<div class="flex mt-[-10vh">
			{#if $showSidebar}
				<div
					class={`flex-none  top-0 left-0 w-[20vw] bg-transparent  p-5 pt-0 text-grey h-full z-40  ease-in-out duration-300 ${
						$showSidebar ? 'translate-x-0 ' : 'translate-x-[-20vw]'
					}`}
				>
					<a class="text-2xl text-yellow-400 no-underline a-title" href="/">SvelteKit app</a>
					<nav>
						<ul>
							{#each slidebar as bar}
								<div>
									<div class="py-2">
										<a
											href={bar.path}
											class={`flex justify-between  ${
												color.includes(bar.path) && bar.path !== '/'
													? 'text-yellow-400'
													: 'text-slate-400'
											}`}
										>
											<div class="flex">
												<svg
													fill="none"
													viewBox="0 0 24 24"
													stroke-width={1.5}
													stroke="currentColor"
													class="w-4 h-4 mr-4"
												>
													<path stroke-linecap="round" stroke-linejoin="round" d={bar.icon} />
												</svg>
												<span>{bar.title} </span>
											</div>
											{#if bar.items.length > 0}
												<svg
													fill="none"
													viewBox="0 0 24 24"
													stroke-width={1.5}
													stroke="currentColor"
													class="w-4 h-4 mr-4"
												>
													<path
														stroke-linecap="round"
														stroke-linejoin="round"
														d={color.includes(bar.path) && bar.path !== '/' ? active : inactive}
													/>
												</svg>
											{/if}
										</a>
										{#if color.includes(bar.path) && bar.path !== '/'}
											<div class="pl-8">
												<ol class="p-2">
													{#each bar.items as item}
														<li>
															<a
																href={item.path}
																class={`flex justify-between  ${
																	color.includes(item.path) ? 'text-yellow-400' : 'text-slate-400'
																}`}><span>{item.idx}. {item.text}</span></a
															>
														</li>
													{/each}
												</ol>
											</div>
										{/if}
									</div>
								</div>
							{/each}
						</ul>
					</nav>
				</div>
			{/if}
			<div class="flex-grow h-full">
				<slot />
			</div>
		</div>
	</main>

	<footer>
		<p>visit <a href="https://kit.svelte.dev">kit.svelte.dev</a> to learn SvelteKit</p>
	</footer>
</div>

<style>
	.app {
		display: flex;
		flex-direction: column;
		min-height: 100vh;
	}

	main {
		flex: 1;
		display: flex;
		flex-direction: column;
		padding: 1rem;
		width: 100%;
		margin: 0 auto;
		box-sizing: border-box;
	}

	footer {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		padding: 12px;
	}

	footer a {
		font-weight: bold;
	}

	@media (min-width: 480px) {
		footer {
			padding: 12px 0;
		}
	}

	ul {
		position: relative;
		padding: 0;
		margin: 0;
		height: 3em;
		justify-content: center;
		align-items: center;
		list-style: none;
		background: var(--background);
		background-size: contain;
	}

	li {
		height: 100%;
	}

	nav a {
		display: flex;
		height: 100%;
		align-items: center;
		padding: 0 0.5rem 0 0;
		font-weight: 700;
		font-size: 0.8rem;
		letter-spacing: 0.1em;
		text-decoration: none;
		transition: color 0.2s linear;
	}
	a:hover {
		color: var(--color-theme-1);
	}

	.a-title {
		text-decoration: none;
	}
</style>
