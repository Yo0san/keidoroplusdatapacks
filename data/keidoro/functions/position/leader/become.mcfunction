#俺がなる！
tag @s remove recon
function keidoro:position/clearitem
function keidoro:position/clearscore
give @s warped_fungus_on_a_stick{display:{Name:'{"translate":"[Skill] invisible suit","color":"gray","italic":false}',Lore:['[{"keybind":"key.use","color":"gray","italic":false},{"translate":" to use.","color":"gray","italic":false}]','{"translate":"invisible suit of one\'s own work.","color":"white","italic":false}','{"translate":"Become invisible for 15 seconds.","color":"white","italic":false}','{"translate":"Cool down:45sec","color":"white","italic":false}']},CustomModelData:100,leaderi:1} 1
give @s warped_fungus_on_a_stick{display:{Name:'{"translate":"[Skill] unity","color":"#FFD500","italic":false}',Lore:['[{"keybind":"key.use","color":"#FFD500","italic":false},{"translate":" to use.","color":"#FFD500","italic":false}]','{"translate":"Unite with nearby thieves.","color":"white","italic":false}','{"translate":"Giving to speedboost＆resistance thief within 5m","color":"white","italic":false}','{"translate":"Cool Down:1min 30sec","color":"white","italic":false}']},CustomModelData:101,leaderi:2} 1
tellraw @s {"translate":"I became a leader!","color":"white"}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
tag @s add leader