# DKOS Test

## Dependencies

dkos depends on KallistOS and its associated newlib being installed in `/opt/toolchains/dc`

Additionally you will as of current need to compile [this branch of dub](https://github.com/LunaTheFoxgirl/dub/tree/betterc-probe), just run `dub build` in its root directory once cloned and branch is changed. Then copy to the bin directory of your liking.

## Building

To build this test, compile GDC for sh-elf (see dc-chain scripts in kallistos), then run

```
dub build --compiler=sh-elf-gdc
```

You can then optionally run sh-elf-strip on the elf file to shrink its size before you load it in to an emulator or send it to your Dreamcast.

## NOTES
DKOS requires that you are in a UNIX-like environment using a sh-like shell,  
the Dreamcast toolchain needs to be installed in /opt/toolchains/dc or dkos will NOT work!