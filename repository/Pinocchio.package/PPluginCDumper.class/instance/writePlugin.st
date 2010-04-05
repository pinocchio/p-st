sourceCreation
writePlugin
	stream lf;
		<< '// ============================================================================'; lf; lf;
		<< 'PLUGIN()'; lf.
	annotations do: [:anAnnotation|
		self writePluginExportForAnnotation: anAnnotation.
	].
	stream << '}'; lf; lf;
		<< 'void unload_plugin() {
}'