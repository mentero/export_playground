```
$ asdf current
elixir         1.12.2-otp-24 (set by /Users/mentero/.tool-versions)
erlang         24.0.5   (set by /Users/mentero/.tool-versions)
```

Take a note which modules have to wait.
```
$ mix compile --profile time --force
Compiling 15 files (.ex)
[profile]     33ms compiling +      0ms waiting for lib/export_playground.ex
[profile]     45ms compiling +      0ms waiting for lib/export_cycle_in_types_example/no_export_cycle.ex
[profile]     71ms compiling +      0ms waiting for lib/typespecs_example/service.ex
[profile]     73ms compiling +     64ms waiting for lib/export_cycle_in_match_example/service.ex
[profile]     50ms compiling +     92ms waiting for lib/pattern_match_example/service.ex
[profile]    150ms compiling +      0ms waiting for lib/export_cycle_in_types_example/model_j.ex
[profile]    150ms compiling +      0ms waiting for lib/pattern_match_example/model_b.ex
[profile]    132ms compiling +      0ms waiting for lib/typespecs_example/model_b.ex
[profile]    145ms compiling +      0ms waiting for lib/typespecs_example/model_a.ex
[profile]    183ms compiling +      0ms waiting for lib/export_cycle_in_match_example/model_a.ex
[profile]    190ms compiling +      0ms waiting for lib/export_cycle_in_match_example/model_c.ex
[profile]    192ms compiling +      0ms waiting for lib/export_cycle_in_types_example/model_h.ex
[profile]    192ms compiling +      0ms waiting for lib/pattern_match_example/model_a.ex
[profile]    196ms compiling +      0ms waiting for lib/export_cycle_in_types_example/model_i.ex
[profile]    199ms compiling +      0ms waiting for lib/export_cycle_in_match_example/model_b.ex
[profile] Finished compilation cycle of 15 modules in 200ms
[profile] Finished group pass check of 15 modules in 4ms
Generated export_playground app
```

```ex
$ mix xref graph --format stats
Tracked files: 15 (nodes)
Compile dependencies: 0 (edges)
Exports dependencies: 8 (edges)
Runtime dependencies: 0 (edges)
Cycles: 1

Top 10 files with most outgoing dependencies:
  * lib/pattern_match_example/service.ex (2)
  * lib/export_cycle_in_match_example/service.ex (2)
  * lib/export_cycle_in_match_example/model_c.ex (2)
  * lib/export_cycle_in_match_example/model_b.ex (1)
  * lib/export_cycle_in_match_example/model_a.ex (1)
  * lib/typespecs_example/service.ex (0)
  * lib/typespecs_example/model_b.ex (0)
  * lib/typespecs_example/model_a.ex (0)
  * lib/pattern_match_example/model_b.ex (0)
  * lib/pattern_match_example/model_a.ex (0)

Top 10 files with most incoming dependencies:
  * lib/export_cycle_in_match_example/model_b.ex (3)
  * lib/export_cycle_in_match_example/model_a.ex (2)
  * lib/pattern_match_example/model_b.ex (1)
  * lib/pattern_match_example/model_a.ex (1)
  * lib/export_cycle_in_match_example/model_c.ex (1)
  * lib/typespecs_example/service.ex (0)
  * lib/typespecs_example/model_b.ex (0)
  * lib/typespecs_example/model_a.ex (0)
  * lib/pattern_match_example/service.ex (0)
  * lib/export_playground.ex (0)
```

```
$ mix xref graph
lib/export_cycle_in_match_example/model_a.ex
└── lib/export_cycle_in_match_example/model_b.ex (export)
lib/export_cycle_in_match_example/model_b.ex
└── lib/export_cycle_in_match_example/model_c.ex (export)
lib/export_cycle_in_match_example/model_c.ex
├── lib/export_cycle_in_match_example/model_a.ex (export)
└── lib/export_cycle_in_match_example/model_b.ex (export)
lib/export_cycle_in_match_example/service.ex
├── lib/export_cycle_in_match_example/model_a.ex (export)
└── lib/export_cycle_in_match_example/model_b.ex (export)
lib/export_cycle_in_types_example/model_h.ex
lib/export_cycle_in_types_example/model_i.ex
lib/export_cycle_in_types_example/model_j.ex
lib/export_cycle_in_types_example/no_export_cycle.ex
lib/export_playground.ex
lib/pattern_match_example/model_a.ex
lib/pattern_match_example/model_b.ex
lib/pattern_match_example/service.ex
├── lib/pattern_match_example/model_a.ex (export)
└── lib/pattern_match_example/model_b.ex (export)
lib/typespecs_example/model_a.ex
lib/typespecs_example/model_b.ex
lib/typespecs_example/service.ex
```
