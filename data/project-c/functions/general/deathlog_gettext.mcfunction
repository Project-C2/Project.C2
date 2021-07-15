#乱数幅min.0～max.0で出力
data merge storage random: {min:0,max:19}
execute store result score #deathLog subcounter run function project-c:general/random

execute if score #deathLog subcounter matches 0 run data modify storage deathlog: Text set value '[{"text":"にしばかれた"}]'
execute if score #deathLog subcounter matches 1 run data modify storage deathlog: Text set value '[{"text":"によってやることやられた"}]'
execute if score #deathLog subcounter matches 2 run data modify storage deathlog: Text set value '[{"text":"に破壊された"}]'
execute if score #deathLog subcounter matches 3 run data modify storage deathlog: Text set value '[{"text":"に血祭りにあげられた"}]'
execute if score #deathLog subcounter matches 4 run data modify storage deathlog: Text set value '[{"text":"で負けた"}]'
execute if score #deathLog subcounter matches 5 run data modify storage deathlog: Text set value '[{"text":"にひどい目にあわされた"}]'
execute if score #deathLog subcounter matches 6 run data modify storage deathlog: Text set value '[{"text":"の餌食になった"}]'
execute if score #deathLog subcounter matches 7 run data modify storage deathlog: Text set value '[{"text":"の魔法で殺された"}]'
execute if score #deathLog subcounter matches 8 run data modify storage deathlog: Text set value '[{"text":"で苦痛もなく死んだ"}]'
execute if score #deathLog subcounter matches 9 run data modify storage deathlog: Text set value '[{"text":"で全身の骨を砕かれた"}]'
execute if score #deathLog subcounter matches 10 run data modify storage deathlog: Text set value '[{"text":"で幾分恥ずかしい死に方をした"}]'
execute if score #deathLog subcounter matches 11 run data modify storage deathlog: Text set value '[{"text":"でやらかした"}]'
execute if score #deathLog subcounter matches 12 run data modify storage deathlog: Text set value '[{"text":"により昇天"}]'
execute if score #deathLog subcounter matches 13 run data modify storage deathlog: Text set value '[{"text":"にボコられた"}]'
execute if score #deathLog subcounter matches 14 run data modify storage deathlog: Text set value '[{"text":"で原型を留めていない"}]'
execute if score #deathLog subcounter matches 15 run data modify storage deathlog: Text set value '[{"text":"で木っ端微塵にされた"}]'
execute if score #deathLog subcounter matches 16 run data modify storage deathlog: Text set value '[{"text":"で潰された"}]'
execute if score #deathLog subcounter matches 17 run data modify storage deathlog: Text set value '[{"text":"にぺしゃんこにされた"}]'
execute unless data storage deathlog: Text run data modify storage deathlog: Text set value '[{"text":"に殺害された"}]'
