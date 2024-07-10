# Subtopology `Telemetry`

Subtopology that instantiates a local `tlmSend` that depends on the `Svc::TlmChan` component.

> Utilizes the [F Prime Subtopology autocoder](https://github.com/mosa11aei/fprime-subtopology-tool).

## Instantiation

In your main deployment module, in `topology.fpp`, add the following:

```
topology Tlm {}
@<! is Telemetry.Telemetry base id 0x1111
```

Then, in the main deployment topology, in `topology.fpp`, add the following:

```
import Tlm
instance Telemetry.Input # input interface
instance Telemetry.Output # output interface
```

Lastly, we want to add our interface connection graph, like so:

```
connections Interface_Tlm {
    rateGroup1.RateGroupMemberOut[0] -> Telemetry.Input.Run
    Telemetry.Output.PktSend_out -> comQueue.comQueueIn[1]
}
```

## Utilization

See the [pdd.md](../../docs/pdd.md) for how to get the fillables for the config objects. Get the outputs of them by running `fppm config --apply mosallaei/TlmChan`. Then:

- `TopologyDefs.hpp` needs to be moved into the `Top/` folder of your main deployment

## Subtopology Interface

**Input interface instance**: `TelemetryInterface.Input` \
**Output interface instance**: `TelemetryInterface.Output`

### Input Interface

Going into subtopology `Telemetry`.

| Input port | Output port pair | Type      |
| ---------- | ---------------- | --------- |
| Run      | Run_in         | Svc.Sched |

### Output Interface

Going out of subtopology `Telemetry`.

| Output port | Input port pair  | Type      |
| ----------- | ---------------- | --------- |
| PktSend_out   | PktSend            | Fw.Com |

## Change Log
| Date | Description |
|---|---|
| 10 JUL 2024 | Initial Draft |