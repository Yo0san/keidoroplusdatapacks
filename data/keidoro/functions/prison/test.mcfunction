#test use handcuff
execute unless entity @s[tag=iclear,tag=hcpri] unless predicate keidoro:hckill run function keidoro:prison/clearitem
execute unless entity @s[tag=hcpri] if predicate keidoro:hckill run function keidoro:prison/hcin_pri
function keidoro:prison/inpri