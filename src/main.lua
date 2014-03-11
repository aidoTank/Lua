function mg1( n)
    local function get ()
         return n ;
    end
    local function inc (m )
        n = n +m ;
    end
    return {get = get, inc= inc}
end

object = mg1(50 )
print(object.get ())
print(object["get" ]())

object.inc(2 )
print(object.get ())