particle minecraft:explosion_emitter ~ ~ ~ 0.2 0.2 0.2 1 3 normal
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 2
execute at @e[type=marker,tag=delontp,limit=1,sort=random] run tp @s ~ ~ ~
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 2.4 1
scoreboard players reset @s delontp