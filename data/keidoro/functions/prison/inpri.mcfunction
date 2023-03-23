#捕まった時の検知
scoreboard players add @s moneydeltime 1
scoreboard players set @s espri 1
execute if score @s moneydeltime matches 300 run function keidoro:prison/money1del