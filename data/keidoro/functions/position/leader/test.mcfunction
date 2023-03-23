#試験
execute if score $leader position matches 0 at @s run function keidoro:position/leader/become
execute if score $leader position matches 1.. at @s run function keidoro:position/leader/over
clear @s leather{position:1}
function keidoro:position/chest