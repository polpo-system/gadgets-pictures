# gadgets-pictures

The sample pictures of ETH Oberon for the gadgets of [polpo](https://github.com/polpo-system/polpo):
Clown.Pict, Grapes.Pict and Bart.Pict, in the Oberon picture format. The puzzle Scramble and the 3D
engine Dim3 use them; they are a package of their own so that every package that needs them can
depend on it.

```
portia.Install gadgets-pictures
```

## What is here

    share/Clown.Pict, Grapes.Pict, Bart.Pict     the pictures, unchanged from Linux Oberon
    tools/Pictures.Tool
    test/PicturesTest.Mod

## Tests

    PicturesTest.Run      3 checks: the three pictures opened; it needs the desktop's display

The license is GPL-3 (`LICENSE`); the code comes from ETH Oberon, whose license (`LICENSE.ETH`)
asks to keep its copyright notice and conditions, which `LICENSE.ETH` does.
