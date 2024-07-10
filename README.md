# TlmChan - An F Prime Package

This package implements the topology for sending telemetry in the form of channels for F Prime. This package was developed and can be installed with [fppm](https://github.com/mosa11aei/fprime-fppm). Installation and usage instructions for fppm can be found in the previous hyperlinked text.

## Package installation

Ensure that your F Prime project has been initialized with a `project.yaml` and the subtopology autocoder. 

```bash
# add the registry where this package is hosted
fppm registries --add https://mosa11aei.github.io/fppm-registry/static/registry.yaml

# install the package
fppm install --package mosallaei/TlmChan

# generate the fillables from the package config objects
fppm config --generate mosallaei/TlmChan
```

## Package Usage

For usage information of this package, see the package's [pdd.md](./docs/pdd.md) file, and the Telemetry subtopology [sdd.md](./Telemetry/docs/sdd.md).