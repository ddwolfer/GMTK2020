///@arg intensity
///@arg duration

var intensity = argument0;
var duration = argument1;

if(!instance_exists(oCamera)) exit;

with(oCamera){
	screenShake = intensity;
	alarm[0] = duration;
}