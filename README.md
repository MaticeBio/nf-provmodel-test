# nf-provmodel-test

Minimal self-contained Nextflow DSL2 pipeline to validate the reimplemented
Nextflow #3530 hint `scheduling.provisioningModel` on Google Batch.

Four trivial processes each map to a provisioning model via per-process
`hints` in `nextflow.config`:

| process    | hint value      | expected Batch provisioningModel |
|------------|-----------------|----------------------------------|
| P_SPOT     | spot            | SPOT                             |
| P_STD      | standard        | STANDARD (on-demand)             |
| P_PREEMPT  | preemptible     | PREEMPTIBLE                      |
| P_DEFAULT  | (none)          | SPOT (global `google.batch.spot=true` fallback) |

Run: `nextflow run MaticeBio/nf-provmodel-test -r main`
