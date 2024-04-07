#!/usr/bin/env bats

source tests/util.sh

@test '001' {
    capture_output nai --length 5 --elevation 321
    assert_no_stderr
    assert_stdout_eq <<EOF
╭───────────────────┬───────┬───────────╮
│     component     │ value │   time    │
├───────────────────┼───────┼───────────┤
│ length            │ 5km   │ 1hr 0min  │
│ elevation change  │ 321m  │ 0hr 32min │
│ endurance penalty │ 0.0%  │ 0hr 0min  │
│ breaks            │       │ 0hr 0min  │
│ total             │       │ 1hr 32min │
╰───────────────────┴───────┴───────────╯
EOF
    assert_exit_code 0
}

@test '002' {
    capture_output nai --length 17.7 --elevation 1000 --break 15
    assert_no_stderr
    assert_stdout_eq <<EOF
╭───────────────────┬────────┬───────────╮
│     component     │ value  │   time    │
├───────────────────┼────────┼───────────┤
│ length            │ 17.7km │ 3hr 31min │
│ elevation change  │ 1000m  │ 1hr 40min │
│ endurance penalty │ 11.1%  │ 0hr 34min │
│ breaks            │        │ 0hr 15min │
│ total             │        │ 6hr 1min  │
╰───────────────────┴────────┴───────────╯
EOF
    assert_exit_code 0
}

@test '003' {
    capture_output nai --length 19.4 --elevation 1676 --break 60
    assert_no_stderr
    assert_stdout_eq <<EOF
╭───────────────────┬────────┬───────────╮
│     component     │ value  │   time    │
├───────────────────┼────────┼───────────┤
│ length            │ 19.4km │ 3hr 52min │
│ elevation change  │ 1676m  │ 2hr 46min │
│ endurance penalty │ 14.4%  │ 0hr 57min │
│ breaks            │        │ 1hr 0min  │
│ total             │        │ 8hr 36min │
╰───────────────────┴────────┴───────────╯
EOF
    assert_exit_code 0
}
