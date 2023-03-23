execute if score $hacker position matches 0..1 run function keidoro:position/hacker/become
execute unless score $hacker position matches 0..1 run function keidoro:position/leader/over
clear @s leather{position:3}