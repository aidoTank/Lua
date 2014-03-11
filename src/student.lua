student = {num = "1000",
  name = "xxx",
  age = "1"
}

t= student
c = {} -- classes

--set student's info
function setstudent(t,num,name,age)
  t.num = num
  t.name = name
  t.age = age
end

--input data
function inputstudent()

  io.write("Intput num:")
  num = io.read()
  io.write("Intput name:")
  name = io.read()
  io.write("Intput age:")
  age = io.read()
  local new_st = {}
  setstudent(new_st, num, name, age)
  return new_st
end


--add students
function addstudents()
  local len = #c
  print("请输入添加学生个数：")
  local n = io.read()

  for i = 1, n do
    io.write("This the" .. i .. "st student")
    local new_st = inputstudent()
    -- age = 19
    c[i+len] = new_st
    --i = i + 1 
    --num = num + 1
    --age = age + 1
    print("函数里面c" .. c[i].num)
  end
end

--print student
function showstudents()
  if(table.maxn(c) == 0) then
    print("还没有学生信息!!!\n")
  else
    for m = 1, table.maxn(c) do
      io.write(c[m].num .. " ")
      io.write(c[m].name .." ")
      io.write(c[m].age .. " ")
      print("\n")
    end
  end
end

--modify student
function modifystudent()
  print("请输入要修改第几个学生的信息：")
  local n = io.read()
  print("请输入要修改学生的信息：")
  num, name, age = inputstudent()
  setstudent(t,num,name,age)
  c[n] = t
end

-- delete student
function deletestudent()
l = table.maxn(c)
c[l] = nil
print("delete success!")
end

function menu()
  print("######################")
  print("#    a, 查看学生信息  #")
  print("#    b, 添加学生信息  #")
  print("#    c, 修改学生信息  #")
  print("#    d, 删除学生信息  #")
  print("######################")
  print("输出你的选择:")
  choice = io.read()

  if choice == "a" then
    showstudents()
  --  screen:clear()
    menu()
  elseif choice == "b" then
    addstudents()
    menu()
  elseif choice == "c" then
    modifystudent()
    menu() 
  elseif choice == "d" then
    deletestudent()
    menu()
  end
end

menu()
