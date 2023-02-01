import adapter from '@sveltejs/adapter-auto';
import adapterStatic from '@sveltejs/adapter-static';
import adapterNode from '@sveltejs/adapter-node';
// import adapterMulti from '@macfja/svelte-multi-adapter';
import { vitePreprocess } from '@sveltejs/kit/vite';

/** @type {import('@sveltejs/kit').Config} */
const config = {
	// Consult https://kit.svelte.dev/docs/integrations#preprocessors
	// for more information about preprocessors
	preprocess: vitePreprocess(),

	kit: {
		 adapter: adapter()


		// adapter: adapterMulti([
		// 	adapterStatic({ pages: 'build-static', assets: 'build-static', precompress: false }),
		// 	adapterNode({ outerHeight: 'build-node', precompress: false })
		// ])
	}
};

export default config;
