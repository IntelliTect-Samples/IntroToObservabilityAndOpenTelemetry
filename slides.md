---
title: Intro to Observability and OpenTelemetry
marp: true
html: true
theme: gaia
---

![bg](static/cover.jpeg)

---
<!-- _class: lead -->
# What is observability and why does it matters to world-class organizations?
---
## Software systems are complex
- They are built on many layers, like a pile of Jenga blocks
- Reactive: respond to changes automatically (scale up/down/all around)
- Dynamic: run on all types of resources and are managed by orchestration systems
- Cross-functional: built and operated by multiple teams
---
## Observability: better visibility into systems
- Why: help you identify and solve problems faster -> enables the business to move faster
- How: Monitoring, alerting, debugging
- What: signals like logs, metrics, traces (also exception trackers, profiling)
---
## Observability helps you answer questions when things go wrong, like:
- What went wrong?
- Why did it go wrong?
- Why is the system exhibiting this behavior?
- Can you answer these questions without making code changes?
---
## Observability, like DevOps, is a Way™️, not plug-n-play
- More about culture and practices than any one tool
- Non-functional requirement
---
## What is a world class organization?
- Can **change** quickly
- End user outcomes are the focus
- Observability enables software and organizations to move fast and break less things
---
<!-- _class: lead -->
# How is observability related to monitoring?
---
## How is observability related to monitoring?
- Observability ∈ monitoring
- Like Star Wars galaxy
![width:400px](static/star-wars-galaxy.png)
---
<!-- _class: lead -->
# What are the Three Pillars of Observability?
---
## Logs (1/3)
- The one we're all familiar with
- Timestamp, value (text, JSON, binary)
- + easy and familiar
- - can lead to poor performance, especially if not async
- - can be expensive to store if not handled properly, storage scales with usage
- - system scoped (silod)
---
## Metrics (2/3)
- numerical representation of data measured over intervals of time
- Timestamp, value (numeric), name, labels
- [Golden Signals](https://sre.google/sre-book/monitoring-distributed-systems/#xref_monitoring_golden-signals) are a good place to start: latency, traffic, errors, saturation
- + mathematical properties allow for aggregation, prediction, summarization, etc.
- + good for alerting
- + storage does not scale with usage
- - storage increases with cardinality (number of labels)
- - system scoped (silod)
---
## Traces (3/3)
- provides context for a request across distributed architecture (end-to-end)
- globally unique ID that is passed through all parts of the system
- made up of "spans" — units of work
- + provides end-to-end observability of a request
- - difficult to add to all aspects of the systems (1st party code, 3rd party code, frameworks, etc.)
- service meshes can provide this using proxies and sidecars
---
<!-- _class: lead -->
# What is the OpenTelemetry project and why would I want to use it?
---
- Open source, Cloud Native Computing Foundation project
- Vendor-agnostic instrumentation tooling made up of
    - Language specific APIs/SDKs
    - OTel collectors for ingesting and exporting data to backends
    - OpenTelemetry Protocol (OTLP) — protocol for sending instrumentation data
- Types of instrumentation
    - Automatic: captures information for you, less granular
    - Manual: have to setup yourself, can customized as needed
---
<!-- _class: lead -->
![width:600px](static/otel-stack.png)
[https://failingfast.io/opentelemetry/](https://failingfast.io/opentelemetry/)

---
## Collectors
- receivers: receive data in a variety of formats
- processors: aggregating, sampling, filtering, and processing
- exporters: send data to telemetry backends
---
## Why
- Vendor-agnostic
- Supported in most/all popular programming languages
- Can get started quickly
- Cloud platforms support it %% TODO: LINKS  %%
- It is the future %% TODO: LINKS  %%
---
## Cloud platforms
- Azure: **TODO**
- AWS: **TODO**
- GCP: **TODO**
---
## Closing
> Often, sheer force of effort can help a rickety system achieve high availability, but this path is usually short-lived and fraught with burnout and dependence on a small number of heroic team members. Taking a controlled, short-term decrease in availability is often a painful, but strategic trade for the long-run stability of the system.

— [SRE book](https://sre.google/sre-book/monitoring-distributed-systems/#the-long-run-MQsWTMS7)

---
### Resources
- [Distributed Systems Observability book](https://www.oreilly.com/library/view/distributed-systems-observability/9781492033431/)
- [Observability Engineering book](https://learning.oreilly.com/library/view/observability-engineering/9781492076438/)
- [Google SRE — Monitoring Distributed Systems](https://sre.google/sre-book/monitoring-distributed-systems/)
- [Honeycomb — The Director's Guide to Observability](https://www.honeycomb.io/wp-content/uploads/2023/11/whitepaper_observability_for_TDM.pdf)
- [The Modern Observability Problem](https://failingfast.io/opentelemetry-observability/)
- [OpenTelemetry, The Missing Ingredient](https://failingfast.io/opentelemetry/)
