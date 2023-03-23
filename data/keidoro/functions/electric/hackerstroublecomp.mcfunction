#fini
effect clear @a[team=guard] darkness
tag @e[type=armor_stand,tag=eledestory] remove eledestory
tellraw @a[team=guard] {"translate":"[Power Repair System] repair completed.","color": "#FF5500"}
scoreboard players reset $HPRS elerepirescore