#キルできる時間帯になったらキルする。
scoreboard players add @s taserktime 1
particle dust 1.000 0.969 0.000 1 ~ ~ ~ 0 0 0 1 4 normal
execute if score @s taserktime matches 10 run function keidoro:taser/arrowkill