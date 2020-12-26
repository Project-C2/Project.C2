loot replace block 0 0 0 container.4 loot project-c:wnkm/110/weapons/composite
loot replace block 0 0 0 container.5 loot project-c:wnkm/110/weapons/bowgun
loot replace block 0 0 0 container.6 loot project-c:wnkm/110/weapons/neptune

data modify block 0 0 0 Items[{tag:{110weaponID:4b}}].tag.110GUISlot set value 4b
data modify block 0 0 0 Items[{tag:{110weaponID:5b}}].tag.110GUISlot set value 5b
data modify block 0 0 0 Items[{tag:{110weaponID:6b}}].tag.110GUISlot set value 6b

data modify block 0 0 0 Items[{tag:{110weapon:1b}}].tag.110GUI set value 1b
data remove block 0 0 0 Items[{tag:{110weapon:1b}}].tag.110weaponID
data remove block 0 0 0 Items[{tag:{110weapon:1b}}].tag.110weapon


