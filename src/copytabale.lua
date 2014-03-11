table_a = { 4, 5, 6 }

--[[
function copytable(s)

local new_tb = {}
for k, v in pairs(s) do
new_tb[k] = v
--print(k, v)
end
return new_tb
end
--]]
function unpack(t, i, n)
  print(i,n)
  i = i or 1
  n = n or #t
  if i <= n then
    return t[i],unpack(t, i + 1, n)
  end
end

function cen(s)
  local new_tb = {}
  new_tb= unpack(s,1,n)
end

function copytable(ta)
  local table_c = {}
  local len = #ta
  local new_st = cen()
  for i = 1, len do 
    table_c[i] = new_st
  end
  return table_c
end

table_b = copytable(table_a)

for k, v in pairs(table_b) do

  print(k, ":" .. v)
end
