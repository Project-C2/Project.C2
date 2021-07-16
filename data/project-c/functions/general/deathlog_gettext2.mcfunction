#乱数幅min.0～max.0で出力
data merge storage random: {min:0,max:3}
execute store result score #deathLog subcounter run function project-c:general/random

execute if score #deathLog subcounter matches 0 run data modify storage deathlog: Text set value '[{"text":"は職選択を考え直そう"}]'
execute if score #deathLog subcounter matches 1 run data modify storage deathlog: Text set value '[{"text":"が死ぬにはまだ早かった"}]'
execute unless data storage deathlog: Text run data modify storage deathlog: Text set value '[{"text":"は死んだ"}]'
