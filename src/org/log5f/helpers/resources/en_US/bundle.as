package org.log5f.helpers.resources.en_US
{
	import org.log5f.helpers.resources.Resource;

	public function bundle():Object
	{
		const bundle:Object = {};
		
		bundle[Resource.ERROR_SINGLETON] 			= 'Only one "{0}" instance can be instantiated.';
		bundle[Resource.ERROR_CALL_ABSTRACTMETHOD]	= 'Abstract method call.',
		bundle[Resource.ERROR_ABSTRACT_METHOD]		= 'The method {0} must be overridden in subclass.',
		bundle[Resource.ERROR_CLASS_NOT_FOUND]		= 'The class "{0}" not found. The non-used classes can be added to project using "-includes" argument of the mxmlc compiler.',
		bundle[Resource.ERROR_ILLEGAL_ARGUMENT]		= 'Illegal numbers of arguments of constructor of class "{0}".',
		bundle[Resource.ERROR_FILE_NOT_FOUND]		= 'File "{0}" not found.',
		bundle[Resource.ERROR_APPENDER_NOT_FOUND]	= 'Appender "{0}" not found. The custom appenders can be added using "-includes" argument of the mxmlc compiler.',
		bundle[Resource.ERROR_FILTER_NOT_FOUND]		= 'Filter "{0}" not found. The custom filters can be added using "-includes" argument of the mxmlc compiler.',
		bundle[Resource.ERROR_FORMATTER_NOT_FOUND]	= 'Formatter "{0}" not found. The custom formatters can be added using "-includes" argument of the mxmlc compiler.',
		bundle[Resource.ERROR_INVALID_APPENDER]		= 'The "{0}" is not valid appender.',
		bundle[Resource.ERROR_INVALID_FILTER]		= 'The "{0}" is not valid filter.',
		bundle[Resource.ERROR_INVALID_CONFIG]		= 'The specified XML is not valid configuration file.',
		bundle[Resource.ERROR_CONFIG_NOT_XML]		= 'Properties file is not XML.'

		return bundle;
	};
}