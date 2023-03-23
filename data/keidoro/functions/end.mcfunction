#終了
execute as @a at @s run function keidoro:prison/outpri
tag @a[team=thief] remove thief
effect clear @a
scoreboard players reset ゲームスタート ootimescore
scoreboard players reset @a moneyhasbeen
function keidoro:timer/stop
scoreboard players reset 脱出可能スコアボード ootimescore
scoreboard players reset チェスト更新タイマー ootimescore
scoreboard players reset チェスト更新タイマーst ootimescore
tag @a remove useivs
tag @a remove ivscd
tag @a remove unitymarker
tag @a remove unitycd
tag @a remove leader
tag @a remove recon
tag @a remove hacker
execute as @a run function keidoro:position/clearscore
scoreboard players reset @e[type=armor_stand,tag=footstep] footstepst
execute as @e[type=marker,tag=footstep] run function keidoro:position/recon/killfs
tellraw @a ["",{"text":"\u8131\u51fa\u8005\uff1a","bold":true,"color":"gold"},{"selector":"@a[tag=escape]","color": "gold"}]
playsound minecraft:block.glass.break master @s ~ ~ ~ 99 0.5
kill @e[type=skeleton,tag=sc]
clear @a[tag=gmp]
tag @a remove escape
bossbar set minecraft:time players
bossbar set minecraft:gtime players
team leave @a[tag=gmp]
spawnpoint @a[tag=gmp] -36 62 46
function keidoro:removescoreboard
execute in minecraft:overworld run tp @a[tag=gmp] -35.5 62.5 46.5 89.05 -0.80
execute in minecraft:overworld run tp @a[team=guard] -35.5 62.5 46.5 89.05 -0.80
gamemode adventure @a
tag @a remove gmp