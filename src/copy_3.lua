function copytable(table_a)  
  local table_b = {}  
  for k, v in pairs(table_a) do  
    if type(v) ~= "table" then  
      table_b[k] = v  
    else  
      table_b[k] = copytable(v)  
    end  
  end  
  return table_b  
end  


a = { a = 3, b = 4, c = 5, { 8, 2 }  }

b = copytable(a)

assert(a[1][1] == 8)

function show_table(b)
local i = 0
  for k, v in pairs(b) do
    if type(v) ~= "table" then  
      print(k, ":" .. v) 
    else  
    
      
        show_table(v)
        i = i + 1
        print("++" .. i)
      end
      --]] 
    end  
 
end

show_table(b)