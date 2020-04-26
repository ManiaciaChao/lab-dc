# lab-dc

This repos is used for HUST `digital circuits and logic design` lab, including instructions, templates and my implements.

## Requirement

`Logisim ITA` or `Logisim HUST` is recommended to view and edit `.circ` files instead of older `logisim`.

You can get it from [GitHub releases](https://github.com/LogisimIt/Logisim/releases).

For Archlinux, you can get it from AUR:

```shell
yay -S logisim-ita-bin
```

You can also use [`logisim-evolution`](https://github.com/reds-heig/logisim-evolution/releases) with some limits.

For Archlinux, you can get it from AUR:

```shell
yay -S logisim-evolution
```

## Compatibility

### Differences

However, you are still allowed to view and edit `.circ` files created by `logisim-evolution` via `logisim` or `Logism ITA`. Please notice that **some properties of your component will change unexpectly**. As far as I know:

* Labels and names are restricted in the form of `[a-zA-z]+[a-zA-z_0-9]*` and can't be reserved VHDL/Verilog keyword. So you definitely can't use CJK characters :)

* Some libraries used by `logisim-evolution` don't exist in `logisim`.

* Default number of inputs could be different.

* Default `Three-state` is set to `true`.

### For `logisim-evolution`

`logisim` and `Logisim ITA` are **only** expected to view or edit files whose filename start with `compat_`.

I wrote some scripts to convert from `logisim-evolution` to `logisim-ita` somehow:

```shell
./script/makeCompat.sh ./lab1/lab1.circ
```

However, you'd better fork and edit `logisim-evolution` sources,  then compile your own `logisim-evolution`,  which save all properties of every component in `.circ` files.