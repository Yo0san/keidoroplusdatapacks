#Seriousness
execute at @e[type=skeleton,tag=sc] run playsound entity.skeleton.death master @a ~ ~ ~ 1
kill @e[type=skeleton,tag=sc]
tellraw @a[team=guard] {"translate":"[Power System] Power has been destructed. Starting up power repair system.","color": "#FF5500"}
tag @e[tag=computer] add eledestory
execute at @e[tag=computer] run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 3 1
effect give @a[team=guard] darkness 30 0 true
clear @s chest{ub:1} 8
function keidoro:electric/hackerstrouble