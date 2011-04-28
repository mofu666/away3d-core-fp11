﻿package away3d.events{	import flash.events.Event;
	/**	 * The ResourceEvent is dispatched when a change of state occurs pertaining to resource management.	 */	public class LibraryEvent extends Event	{		/**		 * Dispatched when a resource and all of its dependencies is retrieved.		 */		public static const RESOURCE_RETRIEVED : String = "resourceRetrieved";				/**		 * Dispatched when a resource's dependency is retrieved and resolved.		 */		public static const DEPENDENCY_RETRIEVED : String = "dependencyRetrieved";				/**		 * Dispatched when a resource's dependency error occurs.		 * Such as wrong parser type, unsupported extensions, parsing errors, malformated or unsupported 3d file etc..		 */		public static const DEPENDENCY_ERROR : String = "dependencyError";		        private var _uri : String;				/**		 * Create a new ResourceEvent object		 * @param type The type of the event.		 * @param uri An identifier (url or id) of the resource.		 */		public function LibraryEvent(type:String, uri : String = null)		{			super(type);            _uri = uri;		}		/**		 * An identifier (url or id) of the resource.		 */        public function get uri() : String        {            return _uri;        }		/**		 * Creates a copy of the current object.		 */        public override function clone() : Event		{			return new LibraryEvent(type, _uri);		}	}}