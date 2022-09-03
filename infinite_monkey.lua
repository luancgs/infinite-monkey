-- Seeding random numbers
math.randomseed(os.time());
math.random(); math.random(); math.random();

local alphabet = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
local alphabet_length = #(alphabet);

local target_output = "monkey";
local output = "";

local loops = 0;

while (output ~= target_output) do
  output = "";
  for i = 1, string.len(target_output) do
    random_char = alphabet[math.random(1, alphabet_length)];
    output = output..random_char;
  end
  io.write(output);
  loops = loops + 1;
end

local monkey_art = [[
                        .="=.
                      _/.-.-.\_     _
                     ( ( o o ) )    ))
                      |/  "  \|    //
      .-------.        \'---'/    //
     _|~~ ~~  |_       /`"""`\\  ((
   =(_|_______|_)=    / /_,_\ \\  \\
     |:::::::::|      \_\\_'__/ \  ))
     |:::::::[]|       /`  /`~\  |//
     |o=======.|      /   /    \  /
     `"""""""""`  ,--`,--'\/\    /
                   '-- "--'  '--'
]]

print("\nThe monkey typed: "..output);
print(monkey_art);
print("Number of loops: "..loops);


