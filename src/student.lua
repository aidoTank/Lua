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
  print("���������ѧ��������")
  local n = io.read()

  for i = 1, n do
    io.write("This the" .. i .. "st student")
    local new_st = inputstudent()
    -- age = 19
    c[i+len] = new_st
    --i = i + 1 
    --num = num + 1
    --age = age + 1
    print("��������c" .. c[i].num)
  end
end

--print student
function showstudents()
  if(table.maxn(c) == 0) then
    print("��û��ѧ����Ϣ!!!\n")
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
  print("������Ҫ�޸ĵڼ���ѧ������Ϣ��")
  local n = io.read()
  print("������Ҫ�޸�ѧ������Ϣ��")
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
  print("#    a, �鿴ѧ����Ϣ  #")
  print("#    b, ���ѧ����Ϣ  #")
  print("#    c, �޸�ѧ����Ϣ  #")
  print("#    d, ɾ��ѧ����Ϣ  #")
  print("######################")
  print("������ѡ��:")
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
