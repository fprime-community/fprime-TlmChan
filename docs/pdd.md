# Package Design Document for TlmChan

The following is the package design document (pdd) for `TlmChan`, developed by Ali Mosallaei. 

## Description

F Prime package for sending telemetry as channels. This abstracts away the current implementation in F Prime, where you comment out and configure your project to use either packets or channels for telemetry. 

# Subtopologies

This package provides some subtopologies to be utilized within your project.

| Subtopology name | Link to sdd   |
| ---------------- | ------------- |
| Telemetry    | [Telemetry/docs/sdd.md](../Telemetry/docs/sdd.md) |

# Config objects

This package provides some files that can be configured by running `fppm config --generate mosallaei/TlmChan`.

| Path to config object | Description                    |
| --------------------- | ------------------------------ |
| {{cookiecutter.td_name}}TopologyDefs.hpp   | The topology definitions file that needs to be moved into the main deployment `Top/` folder. |