module TelemetryConfig {
    
    # include default Queue and Stack sizes here
    module Defaults {
        constant QUEUE_SIZE = 10
        constant STACK_SIZE = 64 * 1024
    }

    # Priorities for active components should be included in a module like so:
    module Priorities {
        constant tlmSend = 100
    }

    # Custom ports in your subtopology can be defined like so:
    # port customPort (
    #     ...
    # )

    # Any other constants can go here as well that configure your subtopology
}