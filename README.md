# rengram (**r**eassembled **engram**)

Rengram is a keyboard layout made for people who want to use the [Engram](https://engram.dev/) keyboard layout by rearraging already existing keys from a QWERTY US layout (or similar). It does this by keeping the number row intact with a slight modification regarding the placement of parantheses, square brackets, and curly braces: those are placed at the end of the number row.

I also included a Czech variant of the rengram layout for personal use.

![rengram keyboard layout](/keyboard-layout.png)

[qwerty-vs-rengram.webm](https://github.com/turtureanu/rengram/assets/90131332/b775ad03-a1fe-441f-b7d2-1d4267ed5b7d)

## Install
```bash
git clone https://github.com/turtureanu/rengram.git
cd rengram
sudo make install
```

You can start using it using `setxkbmap -layout rengram` or by selecting it from your settings.

### Unistall
```bash
# from the 'rengram' directory
sudo make unistall
```

To reinstall: `sudo make reinstall`

Makefile based of off https://github.com/tonyaldon/keyboard-layout/blob/master/Makefile and https://github.com/binarybottle/engram/blob/master/install/linux/x_keyboard_extension/Makefile.
