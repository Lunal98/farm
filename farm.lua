
print "test3.2"

local exists, data=turtle.inspectDown()
local state = data.metadata
local function replant()
    if state==3  then
        local crop=string.sub(data.name,1,string.len(data.name)-4)
        turtle.digDown()
        local i = turtle.getItemDetail(2).name
        local item=string.sub(i,1,string.len(i)-4)
        print(crop)
        print(item)
        if crop==item then
            print ("plant")
            turtle.placeDown(2)
            else
                print("Don't plant")
        end
    end
end
replant()