# Use Cloak to make boilerplate
{ mergeConfig, makeBoilerplate, isDev, isGenerating } = require '@bkwld/cloak'
boilerplate = makeBoilerplate
	siteName: 'Affiliate Pitch'
	cms: '@nuxt/content'
	srcsetWidths: [ 1920, 1440, 1024, 768, 425, 210 ]

# Nuxt config
module.exports = mergeConfig boilerplate,


	modules: [
		'@nuxtjs/google-analytics'
		'@nuxt/content'
		'vue-unorphan/nuxt/module'
		'vue-balance-text/nuxt/module'
	]

	# Expect specially slug-ed towers to exist that will be loaded by error.vue
	generate: fallback: true

	# Add production internal URL
	anchorParser: internalUrls: [
		# /^https?:\/\/(www\.)?domain\.com/
	]

	googleAnalytics:
		id: 'UA-72677049-1'



