#hacking
execute as @e[type=skeleton,tag=sc,limit=1,sort=nearest] at @s run function keidoro:position/hacker/killsc
item replace entity @s weapon.mainhand with air
function keidoro:position/hacker/hackingcd
