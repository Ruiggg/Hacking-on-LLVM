file(REMOVE_RECURSE
  "libRTSanitizerCommon.test.x86_64.pdb"
  "libRTSanitizerCommon.test.x86_64.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/RTSanitizerCommon.test.x86_64.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
