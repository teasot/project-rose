/// @description Don't forget to *always* free buffers and surfaces.

if (video_exists(v)) {
	instance_destroy();
}