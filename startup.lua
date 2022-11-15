local side = "left" -- Change left to whatever side your door / redstone is on, E.G: left, right, front, back, bottom, top. Be sure to leave the "s around it, though
local password = "bacon" -- Change bacon to what you want your password to be. Be sure to leave the "s around it, though
local opentime = 5 -- Change 5 to how long (in seconds) you want the redstone current to be on. Don't put "s around it, though
while true do 
 term.clear() -- Clears the screen
 term.setCursorPos(2,1) -- Fixes the cursor position
 write("Password: ") -- Prints 'Password: ' to the screen
 local input = read("*") -- Makes the variable 'input' have the contents of what the user types in, the "*" part censors out the password
 if input == password then -- Checks if the user inputted the correct password
  term.clear() -- Already explained up top
  term.setCursorPos(2,1)
  print("Password correct!") -- Prints 'Password correct!' to the screen
  rs.setOutput(side,true) -- Output a redstone current to the side you specified
  sleep(opentime) -- Wait the amount of seconds you specifed, then..
  rs.setOutput(side,false) -- Stop outputting a redstone current
 else -- Checks if the user didn't input the correct password
  print("Password incorrect!") -- Prints 'Password incorrect!' to the screen
  sleep(2) -- Waits 2 seconds
 end
end