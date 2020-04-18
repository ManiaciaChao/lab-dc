# lab-dc

This repos is used for HUST `digital circuits and logic design` lab, including instructions, templates and my implements.

## Requirement

`logisim-evolution` is required to view and edit `.circ` files instead of older `logisim`.

You can get it from [GitHub releases](https://github.com/reds-heig/logisim-evolution/releases).

For Archlinux, you can get it from AUR:

```shell
yay -S logisim-evolution-bin
```

## Compatibility

However, you are still allowed to view and edit `.circ` files created by `logisim-evolution` via `logisim`. Please notice that some properties of your component will change unexpectly. As far as I know:

* Labels and names are restricted in the form of `[a-zA-z]+[a-zA-z_0-9]*` and can't be reserved VHDL/Verilog keyword. So you definitely can't use CJK characters :)

* Some libraries used by `logisim-evolution` don't exist in `logisim`.

* Default number of inputs could be different.

* Default `Three-state` is set to `true`.

I wrote some scripts to convert somehow, check them in folder `./scripts`.