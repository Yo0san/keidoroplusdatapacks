#usetime
scoreboard players add @s unitytime 1
execute at @s run particle dust 1.000 0.808 0.420 1 ~ ~0.4 ~ 0.25 0.5 0.25 1 5 normal
execute at @s run particle dust 1.000 0.000 0.000 1 ~ ~0.4 ~ 0.25 0.5 0.25 1 5 normal
execute if score @s unitytime matches 200 run function keidoro:position/leader/unityfini