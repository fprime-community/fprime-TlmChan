set(SOURCE_FILES
    "${CMAKE_CURRENT_LIST_DIR}/Telemetry.fpp"
    "${CMAKE_CURRENT_LIST_DIR}/TelemetryConfig.fpp"
    "${CMAKE_CURRENT_LIST_DIR}/ST-Interface/Input.fpp"
    "${CMAKE_CURRENT_LIST_DIR}/ST-Interface/Output.fpp"
    "${CMAKE_CURRENT_LIST_DIR}/intentionally-empty.cpp"
)

register_fprime_module()

set_target_properties(
    ${FPRIME_CURRENT_MODULE}
    PROPERTIES
    SOURCES "${CMAKE_CURRENT_LIST_DIR}/intentionally-empty.cpp"
)