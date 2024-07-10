module Telemetry {
    instance tlmSend: Svc.TlmChan base id 0xAAAA \
        queue size TelemetryConfig.Defaults.QUEUE_SIZE \
        stack size TelemetryConfig.Defaults.STACK_SIZE \
        priority TelemetryConfig.Priorities.tlmSend

    instance Input: TelemetryInterface.Input base id 0xBBBB
    instance Output: TelemetryInterface.Output base id 0xCCCC

    @ Telemetry send subtopology
    topology Telemetry {

        @! is local
        instance Telemetry.tlmSend

        @! is interface input
        instance Input

        @! is interface output
        instance Output


        connections Interface {
            Input.Run_in -> Telemetry.tlmSend.Run
            Telemetry.tlmSend.PktSend -> Output.PktSend
        }

        @! export
        telemetry connections instance Telemetry.tlmSend

    } # end topology
} # end Telemetry