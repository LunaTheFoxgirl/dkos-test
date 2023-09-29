import dreamcast.pvr;
import core.stdc.stdio;
import core.stdc.stdlib;
import std.math;
import std.extra.color;

void main(string[] args) {
	printf("Hello world from dkos!\n");
	printf("This is code running, written in DLang!\n");
	printf("%d arguments were passed to the program!\n", args.length);
	foreach(arg; args) {
		printf("%.*s", cast(int)arg.length, arg.ptr);
	}

	printf("Attempting to bring up the PVR... ");
	if (pvr_init_defaults() == 0) {
		printf("success!\n");
	} else printf("failed :c\n");
	
	float t = 0;
	while(true) {
		t += 0.001;

		float[3] rgb = hsv2rgb(mod(t, 1), 1, 1);
		pvr_scene_begin();
			pvr_set_bg_color(rgb[0], rgb[1], rgb[2]);
		pvr_scene_finish();

		pvr_wait_ready();
	}
}
