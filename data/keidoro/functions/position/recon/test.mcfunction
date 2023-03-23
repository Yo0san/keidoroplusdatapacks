#test
execute if score $recon position matches 0..2 run function keidoro:position/recon/become
execute if score $recon position matches 2.. run function keidoro:position/leader/over
clear @s leather{position:2}
function keidoro:position/chest