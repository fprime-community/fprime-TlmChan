module TelemetryInterface {
    passive component Input {
        sync input port Run: Svc.Sched
        output port Run_in: Svc.Sched
    }
}