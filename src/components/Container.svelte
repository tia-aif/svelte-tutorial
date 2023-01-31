<div class="my-container">
	<div class="left-top cover" />
	<div class="right-top cover" />
	<slot />
	<div class="left-bottom cover" />
	<div class="right-bottom cover" />
</div>

<style>
	.my-container {
		border: #84b9e35f solid 1px;
		position: relative;
		min-width: 20px;
		min-height: 20px;
		padding: 1rem;
	}
	.cover {
		position: absolute;
		min-width: 10px;
		min-height: 10px;
		border-style: solid;
		border-color: #84b9e35f;
	}
	.left-top {
		top: 0;
		left: 0;
		border-width: 3px 0 0 3px;
		margin-top: -2px;
		margin-left: -2px;
	}
	.right-top {
		top: 0;
		right: 0;
		border-width: 3px 3px 0 0;
		margin-top: -2px;
		margin-right: -2px;
	}
	.right-bottom {
		bottom: 0;
		right: 0;
		border-width: 0 3px 3px 0;
		margin-bottom: -2px;
		margin-right: -2px;
	}
	.left-bottom {
		bottom: 0;
		left: 0;
		border-width: 0 0 3px 3px;
		margin-bottom: -2px;
		margin-left: -2px;
	}
</style>
