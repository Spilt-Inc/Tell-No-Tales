
/// @arg0 objectStruct
/// @arg1 objIndCurrent
/// @arg2 objIndPrev

function createDeck(_struct,_objIndCurrent,_objIndPrev){
	if _struct.trigger {
			var _mapMarkerX = oMapMarker.x;
			var _mapMarkerY = oMapMarker.y;
			if (instance_exists(_struct.current)) {
				_struct.prev = instance_create_layer(_mapMarkerX,_mapMarkerY,"lMain",_objIndPrev);
				instance_destroy(_struct.current);
			}
			_struct.current = instance_create_layer(oMapMarker.x,oMapMarker.y,"lBehind",_objIndCurrent);
			deckChangeAnim.trigger = true;
			_struct.trigger = false;
	}
}
