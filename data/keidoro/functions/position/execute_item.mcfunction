#leader ivs item
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{leaderi:1}}},scores={wfrightclickv3=1},tag=thief] at @s run function keidoro:position/leader/useivs
execute as @a[tag=useivs] run function keidoro:position/leader/ivsusetime
execute as @a[tag=ivscd] run function keidoro:position/leader/ivscdtime

#leader unity
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{leaderi:2}}},scores={wfrightclickv3=1},tag=thief] at @s run function keidoro:position/leader/useunity 
execute as @a[tag=unitymarker] at @s if entity @a[distance=..5,team=thief] positioned ~ ~5 ~ if entity @s[distance=..5] run function keidoro:position/leader/unity_effect
execute as @a[tag=unitymarker] run function keidoro:position/leader/unityusetime
execute as @a[tag=unitycd] run function keidoro:position/leader/unitycdtime

#recon arrowcd
execute as @a[tag=recon] unless entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow",Count:1b,tag:{reconi:1}}]}] run function keidoro:position/recon/racd
execute as @a[tag=recon] unless entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow",Count:2b,tag:{reconi:2}}]}] run function keidoro:position/recon/sacd
execute if entity @a[tag=recon] run function keidoro:position/recon/execute

#hacker hacking
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{hackeri:1}}},scores={wfrightclickv3=1},tag=thief] at @s run function keidoro:position/hacker/usehacking
execute as @a[scores={hackingcd=1..}] run function keidoro:position/hacker/hackingcd
#Hacker's Seriousness
execute as @e[tag=eledestory] at @s run function keidoro:electric/hackerstrouble
#IOT
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{hackeri:2}}},scores={wfrightclickv3=1},tag=thief] run function keidoro:position/hacker/useiot
execute as @a[scores={iotcd=1..}] run function keidoro:position/hacker/iotcd