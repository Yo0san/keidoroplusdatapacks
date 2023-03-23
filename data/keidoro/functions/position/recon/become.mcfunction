#become recon
function keidoro:position/positionclear
function keidoro:position/clearitem
function keidoro:position/clearscore
give @p bow{Unbreakable:1b,reconbow:1} 1
give @s tipped_arrow{display:{Name:'{"translate":"[skill] recon arrow","color":"blue","italic":false}',Lore:['{"translate":"It is luminous arrow.","color":"white","italic":false}','{"translate":"The player hit by the arrow is given luminescence (5 sec).","color":"white","italic":false}','{"translate":"Cool down:45sec","color":"white"}']},CustomModelData:1,reconi:1,CustomPotionEffects:[{Id:24,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:6911} 1
give @s tipped_arrow{display:{Name:'{"translate":"[skill] stun arrow","color":"yellow","italic":false}',Lore:['{"translate":"An self made electrically charged arrow.","color":"white","italic":false}','{"translate":"Hit player give stun(5 sec.)","color":"white","italic":false}','{"translate":"Cool down:1min","color":"white","italic":false}']},reconi:2,CustomPotionEffects:[{Id:2,Amplifier:127b,Duration:20},{Id:8,Amplifier:-127b,Duration:20},{Id:15,Amplifier:0b,Duration:100},{Id:18,Amplifier:127b,Duration:100}],CustomPotionColor:16772608} 2
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
tellraw @s {"translate":"I became a recon!"}
tag @s add recon