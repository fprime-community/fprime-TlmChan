module Telemetry {
    instance tlmSend: Svc.TlmChan base id 0xAAAA \
        queue size TelemetryConfig.Default.QUEUE_SIZE \
        stack size TelemetryConfig.Default.STACK_SIZE \
        priority TelemetryConfig.Priorities.tlmSend

    instance Input: TelemetryInterface.Input base id 0xBBBB
    instance Output: TelemetryInterface.Output base id 0xCCCC

    @ Telemetry send subtopology
    topology Telemetry {

        @! is local
        instance tlmSend

        @! is interface input
        instance Input

        @! is interface output
        instance Output

        connections Interface {
            Input.Run_in -> tlmSend.Run
            tlmSend.PktSend -> Output.PktSend
        }

    } # end topology
} # end Telemetry