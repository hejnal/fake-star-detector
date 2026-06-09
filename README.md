
Welcome to your new Dataform for dbt project!

### Using the starter project

This starter project is configured with:
1.  A **package dependency** (`dbt-labs/dbt_utils` defined in `packages.yml`).
2.  A model (`my_first_dbt_model.sql`) that uses the global `execute` variable to trigger a **Just-in-Time (JiT) action** (making the compilation dynamic) and utilizes the `dbt_utils.safe_divide` macro.

**IMPORTANT:** To download the dependency, run:
```bash
dataform dbt deps
```
(or `df-dbt deps`)

You can compile and run the project:
```bash
dataform dbt compile
dataform dbt run
```

### Supported commands

We support the following commands, which can be invoked via `dataform dbt <command>` or `df-dbt <command>`:
- `init`: Create a new Dataform for dbt project.
- `onboard`: Onboard an existing dbt project onto Dataform.
- `deps`: Install packages for dbt project.
- `compile`[^1]: Compile dbt project.
- `run`[^1]: Run dbt project.

The following commands are not yet supported:
- `test`
- `build`
- `docs generate`

[^1] For now, we only support hermetic executions.
