/// @description Insert description here
// You can write your code in this editor
if( place_meeting(x,y,oPlayer) ){
	FogAlpha = approach(FogAlpha,0,0.1)
}else{
	FogAlpha = approach(FogAlpha,1,0.05)
}
if( FogAlpha == 1 ){
	FogFlag = false
}else if( FogAlpha == 0 ){
	FogFlag = true
}
image_alpha = FogAlpha