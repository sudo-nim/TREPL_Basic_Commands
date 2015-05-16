require 'lfs'

function viewsource( f )
    --get info & check it's actually from a file
    local info = debug.getinfo( f, "S" )
    local src, line = info.source, info.linedefined
    src = src.sub(src, 2, -1)
    if src == "[C]"   then  return nil, "Is a C function."  end
    if src == "stdin" then  return nil, "Was defined interactively."  end
    --start vim (or an other editor if you adapt the format string)
    return os.execute( ("vim %q +%d"):format( src, line ) )
end
function sourceof( f )
    local info = debug.getinfo( f, "S" )
        return info.short_src, info.linedefined
    end
function cl()
    os.execute('clear')
end
function p()
    os.execute('pwd')
end
function l(dir)
    if dir == nil then
        os.execute('ls')
    else
        os.execute('ls ' .. dir) 
    end
end
function cd(dir)
    lfs.chdir(dir)
    p()
end
function keys(tab)
    for key, value in pairs(tab) do
        print(key) 
    end
end
function mv(from, to)
    os.execute('mv '..from..' '..to)
end
