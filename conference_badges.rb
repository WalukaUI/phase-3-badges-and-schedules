# Write your code here.

def badge_maker(name)
        return "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    newArray=[]
  names.each do |name|
    newArray.push("Hello, my name is #{name}.")
  end
  return newArray
end

# def assign_rooms(names)
#     ary=[]
#     count=1
#     names.each do |name|
#         ary.push("Hello, #{name}! You'll be assigned to room #{count}!")
#         count += 1
#     end
#     return ary
# end

def assign_rooms(names)
    ary=[]
    names.each_with_index do |name, index|
        ary.push("Hello, #{name}! You'll be assigned to room #{index+1}!")
    end
    return ary
end

def printer(attendees)
    batch_badge_creator(attendees).each do |line|
      puts line
    end
    assign_rooms(attendees).each do |lines|
        puts lines
    end
end