<script>
	import { page } from '$app/stores';
	import { showSidebar } from '../store/state';

	const switchDrawer = () => ($showSidebar = !$showSidebar);
</script>

<header>
	<div class="corner">
		<svg
			on:click={switchDrawer}
			class="pl-2 z-30 flex items-center cursor-pointer top-0"
			fill="#99999999"
			viewBox="0 0 100 80"
			width="30"
			height="30"
		>
			<rect width="90" height="7" />
			<rect y="20" width="90" height="7" />
			<rect y="40" width="90" height="7" />
		</svg>
	</div>

	<nav>
		<ul>
			<li aria-current={$page.url.pathname === '/' ? 'page' : undefined}>
				<a href="/">Home</a>
			</li>
			<li aria-current={$page.url.pathname === '/about' ? 'page' : undefined}>
				<a href="/about">About</a>
			</li>
			<li aria-current={$page.url.pathname.startsWith('/sverdle') ? 'page' : undefined}>
				<a href="/sverdle">Sverdle</a>
			</li>
			<li aria-current={$page.url.pathname.startsWith('/widgets') ? 'page' : undefined}>
				<a href="/widgets">Widgets</a>
			</li>
		</ul>
	</nav>
</header>

<style>
	header {
		display: flex;
		justify-content: space-between;
		border-bottom: #84b9e35f solid 1px;
		background: #84b9e35f;
	}

	.corner {
		width: 3em;
		height: 3em;
	}

	nav {
		display: flex;
		justify-content: center;
	}

	svg {
		width: 2em;
		height: 3em;
		display: block;
	}

	ul {
		position: relative;
		padding: 0;
		margin: 0;
		height: 3em;
		display: flex;
		justify-content: center;
		align-items: center;
		list-style: none;
		background: var(--background);
		background-size: contain;
	}

	li {
		position: relative;
		height: 100%;
	}

	li[aria-current='page']::before {
		--size: 6px;
		content: '';
		width: 0;
		height: 0;
		position: absolute;
		top: 0;
		left: calc(50% - var(--size));
		border: var(--size) solid transparent;
		border-top: var(--size) solid var(--color-theme-1);
	}

	nav a {
		display: flex;
		height: 100%;
		align-items: center;
		padding: 0 0.5rem;
		color: var(--color-text);
		font-weight: 700;
		font-size: 0.8rem;
		text-transform: uppercase;
		letter-spacing: 0.1em;
		text-decoration: none;
		transition: color 0.2s linear;
	}

	a:hover {
		color: var(--color-theme-1);
	}
</style>
