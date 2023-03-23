particle dust 1.000 0.000 0.000 1 ~ ~ ~ 0.1 0.1 0.1 1 1 normal
execute as @e[type=armor_stand,tag=footstep] run scoreboard players add @s footstep 1
execute as @e[type=armor_stand,tag=footstep] if score @s footstep matches 300.. run function keidoro:position/recon/killfs