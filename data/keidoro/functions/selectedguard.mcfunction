#選択してものだけでランダムに決まる。
effect give @a instant_health 1 5 true
execute as @a run function keidoro:prison/outpri
gamemode adventure @a[tag=gmp]
clear @a[tag=gmp]
execute as @r[tag=st,limit=1] run team join guard @s
execute unless entity @a[tag=st] run tellraw @s {"translate":"*There are no candidates!","color":"red"}
team join thief @a[team=!guard]
give @a[team=thief] tripwire_hook{display:{Name:'{"text":"ピッキングツール","color":"gray","italic":false}'},CustomModelData:1} 1
give @a[team=guard] tripwire_hook{display:{Name:'{"text":"警備用施錠鍵","color":"gray","italic":false}'},CustomModelData:2} 1
give @a[team=guard] stone_sword{display:{Name:'{"text":"警棒","color":"gray","italic":false}',Lore:['{"text":"犯罪者をしばくための棒だ。","color":"gray","italic":false}','{"text":"実は警棒って買えるみたい。","color":"gray","italic":false}']},Unbreakable:1b,CustomModelData:1} 1
#give @a[team=thief] warped_fungus_on_a_stick{display:{Name:'{"text":"Bダッシュ","color":"yellow","italic":false}',Lore:['{"text":"使うとスタミナを消費してBダッシュすることができます。","color":"white","italic":false}','{"text":"歩くかスニークするとBダッシュを止めます。","color":"white","italic":false}','{"text":"※スタミナが0だと使えません！！","color":"red","italic":false}']},CustomModelData:4,dash:1} 1
#give @a[team=thief] warped_fungus_on_a_stick{display:{Name:'{"translate":"[skill]Bdash","color":"yellow","italic":false}',Lore:['[{"keybind":"key.use","color":"yellow","italic":false},{"translate":" to use.","color":"yellow","italic":false}]','{"translate":"When used consume stamina as moving speed up.","color":"white","italic":false}','{"translate":"If walk and sneak, you stop the Bdash.","color":"white","italic":false}','{"translate":"*If stamina none, you can\'t use Bdash.","color":"red","italic":false}']},CustomModelData:4,dash:1} 1
tellraw @a [{"selector":"@a[team=guard]"},{"text":"\u304c\u8b66\u5099\u54e1\u306b\u306a\u308a\u307e\u3057\u305f\u3002","color":"#009DFA"}]
scoreboard players set $time time 1200
tag @a[team=thief] add ndash
tag @a[team=thief] add thief
scoreboard players set @a[team=thief] stamina 160
bossbar set minecraft:time players @a[team=thief]
bossbar set minecraft:gtime players @a[team=guard]
#execute unless score スタミナ有無 setting matches 1 as @a[team=guard] at @s run attribute @s generic.movement_speed base set