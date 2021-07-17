#乱数幅min.0～max.0で出力
data merge storage random: {min:0,max:8}
execute store result score #deathLog subcounter run function project-c:general/random

execute if score #deathLog subcounter matches 0 run data modify storage deathlog: Text set value '[{"text":"は職選択を考え直そう"}]'
execute if score #deathLog subcounter matches 1 run data modify storage deathlog: Text set value '[{"text":"が死ぬにはまだ早かった"}]'
execute if score #deathLog subcounter matches 2 run data modify storage deathlog: Text set value '[{"text":"はダメージを受けたので帰った"}]'
execute if score #deathLog subcounter matches 3 run data modify storage deathlog: Text set value '[{"text":"は辞世の句を詠んだ"}]'
execute if score #deathLog subcounter matches 4 run data modify storage deathlog: Text set value '[{"text":"の生き様を家族は知らない"}]'
execute if score #deathLog subcounter matches 5 run data modify storage deathlog: Text set value '[{"text":"は消息を絶った"}]'
execute if score #deathLog subcounter matches 6 run data modify storage deathlog: Text set value '[{"text":"は[ゲームの仕様]に殺された"}]'
execute unless data storage deathlog: Text run data modify storage deathlog: Text set value '[{"text":"は死んだ"}]'
