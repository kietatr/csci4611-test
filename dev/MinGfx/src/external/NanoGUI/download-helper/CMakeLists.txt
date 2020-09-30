
         # This is a helper cmake project -- the only thing this project does is download 
         # the external project.  So, the configure, build, install, and test commands for 
         # ExternalProject_Add() are intentionally set as NOPs.  
  
        
         cmake_minimum_required (VERSION 3.9) 
         
         project(NanoGUI-download) 
         
         include(ExternalProject) 
         ExternalProject_Add( 
             NanoGUI 
             SOURCE_DIR "/home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/src/external/NanoGUI/src" 
             BINARY_DIR "/home/tran0563/Documents/CSCI-4611-F20/repo-user0100/dev/MinGfx/src/external/NanoGUI/download-helper" 
             GIT_REPOSITORY https://github.com/wjakob/nanogui.git 
             CONFIGURE_COMMAND "" 
             BUILD_COMMAND "" 
             INSTALL_COMMAND "" 
             TEST_COMMAND "" 
             LOG_DOWNLOAD ON 
             GIT_PROGRESS 1 
         ) 
     
