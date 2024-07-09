module TelemetryInterface {
    passive component Output {
        sync input port PktSend: Fw.Com
        output port PktSend_out: Fw.Com
    }
}