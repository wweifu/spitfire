@ECHO OFF
cd webrtc-checkout\src\
call gn gen out/x86/Debug --args="is_debug=true target_cpu=\"x86\" symbol_level=2 rtc_enable_sctp=true fatal_linker_warnings=false treat_warnings_as_errors=false rtc_include_tests=true"
call ninja -C out/x86/Debug
call ninja -C out/x86/Debug pc_test_mock
pause
