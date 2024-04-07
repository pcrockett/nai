# nai

My personal take on [Naismith's Rule](https://en.wikipedia.org/wiki/Naismith's_rule), a hiking time
estimation technique.

## Usage

This is meant for day hikes.

```bash
nai --length 5 --elevation 321
# ╭───────────────────┬───────┬───────────╮
# │     component     │ value │   time    │
# ├───────────────────┼───────┼───────────┤
# │ length            │ 5km   │ 1hr 0min  │
# │ elevation change  │ 321m  │ 0hr 32min │
# │ endurance penalty │ 0.0%  │ 0hr 0min  │
# │ breaks            │       │ 0hr 0min  │
# │ total             │       │ 1hr 32min │
# ╰───────────────────┴───────┴───────────╯

nai --length 19.4 --elevation 1676 --break 60
# ╭───────────────────┬────────┬───────────╮
# │     component     │ value  │   time    │
# ├───────────────────┼────────┼───────────┤
# │ length            │ 19.4km │ 3hr 52min │
# │ elevation change  │ 1676m  │ 2hr 46min │
# │ endurance penalty │ 14.4%  │ 0hr 57min │
# │ breaks            │        │ 1hr 0min  │
# │ total             │        │ 8hr 36min │
# ╰───────────────────┴────────┴───────────╯
```

_The endurance penalty is based on total time hiking, and is hard-coded to estimate my own fitness
level._

## Dependencies

This script is written in [Nushell](https://www.nushell.sh/).

## Installation

If you have Nushell installed, download [the script](nai), `chmod +x nai`, and run it.
