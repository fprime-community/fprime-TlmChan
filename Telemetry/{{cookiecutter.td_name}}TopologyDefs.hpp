@! begin config description
td_name is the name of the topology that is instantiated in your main deployment.
@! end config description

#ifndef TELEMETRY_DEFS_HPP
#define TELEMETRY_DEFS_HPP

struct TelemetryState {
    /* include any variables that are needed for 
    configuring/starting/tearing down the topology */
};
struct TopologyState {
    TelemetryState Telemetry_state;
};

namespace GlobalDefs {
    namespace PingEntries {
        /* include any ping entries that are needed for the subtopology
        e.g., rate groups need FAIL and WARN ping enums
        For example:

        namespace Telemetry_rateGroup {
            enum {
                WARN = 3,
                FATAL = 5
            };
        }
        */
    }
}

#endif