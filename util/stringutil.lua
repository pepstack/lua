#!/usr/bin/env lua

local content = [=[
Lorem ipsum dolor sit amet, consectetur adipisicing elit,
sed do eiusmod tempor incididunt ut labore et dolore magna 
aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
ullamco laboris nisi ut aliquip ex ea commodo consequat.
]=]

local fieldstr = "a.b.c.d.f.e"


local function split(str, sep)
   local result = {}
   local regex = ("([^%s]+)"):format(sep)
   for each in str:gmatch(regex) do
      table.insert(result, each)
   end
   return result
end


local lines = split(content, "\n")

for _,line in ipairs(lines) do
   print(line)
end

local fields = split(fieldstr, ".")

for _,field in ipairs(fields) do
   print(field)
end

print(fields[1])