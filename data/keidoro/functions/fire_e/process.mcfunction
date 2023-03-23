scoreboard players add @s festtimest 1
execute at @s as @a[distance=..2,team=guard] at @s positioned ~ ~2 ~ if entity @s[distance=..2,team=guard] run function keidoro:fire_e/if_true
particle minecraft:explosion ~ ~ ~ 1 1 1 1 20 force @a
playsound entity.horse.saddle master @a ~ ~ ~ 1 2.0
execute if score @s festtimest matches 100.. run function keidoro:fire_e/firestop