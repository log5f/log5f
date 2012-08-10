////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2009 http://log5f.org
// This program is made available under the terms of the MIT License.
////////////////////////////////////////////////////////////////////////////////

package org.log5f.helpers.resources
{
	import mx.resources.ResourceBundle;
	import mx.utils.StringUtil;
	
	import org.log5f.helpers.resources.en_US.bundle;
	import org.log5f.log5f_internal;
	
	use namespace log5f_internal;
	
	//-------------------------------------
	//	Other metadata
	//-------------------------------------
	
	public class ResourceManager
	{
		private static const bundles:Object = 
		{
			"en_US" : org.log5f.helpers.resources.en_US.bundle()
		};
		
		//----------------------------------------------------------------------
		//
		//	Class variables
		//
		//----------------------------------------------------------------------
		
		private static var _instance:ResourceManager;
		
		//----------------------------------------------------------------------
		//
		//	Class properties
		//
		//----------------------------------------------------------------------
		
		public static function get instance():ResourceManager
		{
			if (!ResourceManager._instance)
				ResourceManager._instance = new ResourceManager();
			
			return ResourceManager._instance;
		}
		
		//----------------------------------------------------------------------
		//
		//	Constructor
		//
		//----------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function ResourceManager()
		{
			super();
			
			if (ResourceManager._instance)
				throw new Error(getString(Resource.ERROR_SINGLETON, ["ResourceManager"]));
		}
		
		//----------------------------------------------------------------------
		//
		//	Variables
		//
		//----------------------------------------------------------------------
		
		log5f_internal var chain:Array = ["en_US"];
		
		//----------------------------------------------------------------------
		//
		//	Methods
		//
		//----------------------------------------------------------------------
		
		public function getString(resource:String, parameters:Array=null):String
		{
			var string:String = String(this.getResource("getString", resource));
			
			return StringUtil.substitute(string, parameters);
		}

		public function getStringArray(resource:String):Array
		{
			return this.getResource("getStringArray", resource) as Array;
		}

		public function getNumber(resource:String):Number
		{
			return Number(this.getResource("getNumber", resource));
		}

		public function getBoolean(resource:String):Boolean
		{
			return Boolean(this.getResource("getBoolean", resource));
		}
		
		public function getObject(resource:String):Object
		{
			return this.getResource("getObject", resource);
		}
		
		private function getResource(type:String, name:String):Object
		{
			const n:int = chain.length;
			for (var i:int = 0; i < n; i++)
			{
				var locale:String = chain[i];
				
				var bundle:Object = bundles[locale];
				
				if (bundle && name in bundle)
					return bundle[name];
			}
			
			return null;
		}
	}
}