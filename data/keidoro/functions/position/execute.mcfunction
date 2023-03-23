#検知
execute as @a[nbt={Inventory:[{id:"minecraft:leather",tag:{position:1}}]}] run function keidoro:position/leader/test
execute as @a[nbt={Inventory:[{id:"minecraft:leather",tag:{position:2}}]}] run function keidoro:position/recon/test
execute as @a[nbt={Inventory:[{id:"minecraft:leather",tag:{position:3}}]}] run function keidoro:position/hacker/test