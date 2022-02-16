# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "drone: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(drone_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bora/Downloads/Takeoff_Circle-master/src/drone/srv/Sender.srv" NAME_WE)
add_custom_target(_drone_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "drone" "/home/bora/Downloads/Takeoff_Circle-master/src/drone/srv/Sender.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(drone
  "/home/bora/Downloads/Takeoff_Circle-master/src/drone/srv/Sender.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drone
)

### Generating Module File
_generate_module_cpp(drone
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drone
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(drone_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(drone_generate_messages drone_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bora/Downloads/Takeoff_Circle-master/src/drone/srv/Sender.srv" NAME_WE)
add_dependencies(drone_generate_messages_cpp _drone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drone_gencpp)
add_dependencies(drone_gencpp drone_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drone_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(drone
  "/home/bora/Downloads/Takeoff_Circle-master/src/drone/srv/Sender.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drone
)

### Generating Module File
_generate_module_eus(drone
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drone
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(drone_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(drone_generate_messages drone_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bora/Downloads/Takeoff_Circle-master/src/drone/srv/Sender.srv" NAME_WE)
add_dependencies(drone_generate_messages_eus _drone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drone_geneus)
add_dependencies(drone_geneus drone_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drone_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(drone
  "/home/bora/Downloads/Takeoff_Circle-master/src/drone/srv/Sender.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drone
)

### Generating Module File
_generate_module_lisp(drone
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drone
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(drone_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(drone_generate_messages drone_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bora/Downloads/Takeoff_Circle-master/src/drone/srv/Sender.srv" NAME_WE)
add_dependencies(drone_generate_messages_lisp _drone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drone_genlisp)
add_dependencies(drone_genlisp drone_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drone_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(drone
  "/home/bora/Downloads/Takeoff_Circle-master/src/drone/srv/Sender.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drone
)

### Generating Module File
_generate_module_nodejs(drone
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drone
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(drone_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(drone_generate_messages drone_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bora/Downloads/Takeoff_Circle-master/src/drone/srv/Sender.srv" NAME_WE)
add_dependencies(drone_generate_messages_nodejs _drone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drone_gennodejs)
add_dependencies(drone_gennodejs drone_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drone_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(drone
  "/home/bora/Downloads/Takeoff_Circle-master/src/drone/srv/Sender.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drone
)

### Generating Module File
_generate_module_py(drone
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drone
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(drone_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(drone_generate_messages drone_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bora/Downloads/Takeoff_Circle-master/src/drone/srv/Sender.srv" NAME_WE)
add_dependencies(drone_generate_messages_py _drone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(drone_genpy)
add_dependencies(drone_genpy drone_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS drone_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/drone
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(drone_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/drone
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(drone_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/drone
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(drone_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/drone
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(drone_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drone)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drone\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/drone
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(drone_generate_messages_py std_msgs_generate_messages_py)
endif()
