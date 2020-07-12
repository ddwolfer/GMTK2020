/// @description change sound volume
/// @param shift

var shift = argument[0];

SOUND_VOLUME = clamp(SOUND_VOLUME + shift, 0, 1);
audio_group_set_gain(soundEffect, SOUND_VOLUME, 0);