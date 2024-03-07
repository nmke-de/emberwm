# emberwm

A fork of [vswm](https://github.com/fehawen/vswm) with the intended purpose of usage within rootful Xwayland.

About vswm:

> Probably the most stupid window manager ever created, written over an ancient
> relic of a library called Xlib -- a library so old that it preceded the birth
> of planet Earth itself.
> 
> - There are no workspaces.
> - All windows are maximised.
> - Windows can not be moved or resized.
> - Only one window is visible at a time.
> - This certainly isn't for everyone.
> 
> Screenshot: https://www.reddit.com/r/unixporn/comments/pbf4wu/vswm_hello_friend/

## But why?

Wayland desktops are becoming more usable by the day. However, a lot of otherwise very usable and interesting Wayland Compositors available do not support *rootless* XWayland, meaning, without any further complications, you can not start a graphical program without Wayland support.

Fortunately, these compositors can run *rootful* XWayland, which is essentially just a normal window that is a Xorg-display for legacy GUI programs. This is one of the recommended ways for the [Niri-Compositor](https://github.com/YaLTeR/niri) to [run Xorg programs](https://github.com/YaLTeR/niri/wiki/Xwayland). This is unproblematic if you are okay not resizing your window and creating new instances of XWayland everytime you run a new instance of Xorg programs. Emberwm is supposed to make this process a little more comfortable though. 

## Usage

After configuration and installation, run

```bash
ember <your program> [arguments ...]
```

or just

```bash
ember
```

to get started.

### Keybindings

```
MOD1 + Tab               focus next window
MOD1 + Shift + Tab       focus prev window
MOD1 + q                 kill window
MOD1 + Shift + r         refresh wm [*]
MOD1 + Return            st
```

[*] Resize and reposition windows. Useful when resizing XWayland.

## Configuration

Modify the keybindings to your liking by editing `emberwm.c`.

## Dependencies

You need the Xlib header files.


## Installation

Clean.

    $ make clean

Compile.

    $ make

Install.

    $ make install

All in one go.

    $ make clean install

Uninstall.

    $ make uninstall

You may need to run install as root.
DESTDIR and PREFIX are supported.


## Credits

vswm: https://github.com/fehawen/vswm
niri: https://github.com/YaLTeR/niri

For vswm:
> i3: https://github.com/i3/i3
> dwm: https://git.suckless.org/dwm
> sowm: https://github.com/dylanaraps/sowm
> berry: https://github.com/JLErvin/berry
> tinywm: http://incise.org/tinywm.html
> katriawm: https://www.uninformativ.de/git/katriawm
