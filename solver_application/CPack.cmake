include(InstallRequiredSystemLibraries)
set(CPACK_PACKAGE_CONTACT ${GITHUB_EMAIL})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "CPack ukidoshi package's")

set(CPACK_PACKAGE_NAME "solver")

option(GENERATOR "")

if(${GENERATOR} MATCHES BIN)
        set(CPACK_DEBIAN_PACKAGE_MAINTAINER "ukidoshi")
        install(TARGETS solver DESTINATION bin)
endif()

if(${GENERATOR} MATCHES ARC)
	install(FILES equation.cpp
	              ../formatter_lib/formatter.cpp
		      ../formatter_ex_lib/formatter_ex.cpp
		      ../solver_lib/solver.cpp
		DESTINATION code)
	install(TARGETS formatter_ex solver_lib LIBRARY DESTINATION lib)
endif()


install(TARGETS solver DESTINATION bin)

include(CPack)
