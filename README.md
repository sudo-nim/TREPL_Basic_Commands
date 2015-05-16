# TREPL_Basic_Commands
Lua file that implements a bunch of standard repl commands, along with instructions for running that file when the torch repl starts up. See the basic_commands.lua for to see the commands implemented. 

# How to set this file to run at TREPL startup
1. Place basic_commands.lua somewhere on your path. You can see what's on your path by entering the TREPL and typing package.path.
2. Define the following alias in your bash rc
    * alias th="th -l 'basic_commands'"

* I also like to add this alias so that I can add commands as I want them.
    * alias thrc="vim path-to-commands-file/basic_commands.lua"
