loot replace block 0 0 0 container.4 loot project-c:wnkm/110/skills/p1/1
loot replace block 0 0 0 container.5 loot project-c:wnkm/110/skills/p1/2
loot replace block 0 0 0 container.6 loot project-c:wnkm/110/skills/p1/3
loot replace block 0 0 0 container.7 loot project-c:wnkm/110/skills/p1/4

data modify block 0 0 0 Items[{tag:{110skillID:1b}}].tag.110GUISlot set value 4b
data modify block 0 0 0 Items[{tag:{110skillID:2b}}].tag.110GUISlot set value 5b
data modify block 0 0 0 Items[{tag:{110skillID:3b}}].tag.110GUISlot set value 6b
data modify block 0 0 0 Items[{tag:{110skillID:4b}}].tag.110GUISlot set value 7b
data modify block 0 0 0 Items[{tag:{110skill:1b}}].tag.110GUI set value 1b
data remove block 0 0 0 Items[{tag:{110skill:1b}}].tag.110skillID
data remove block 0 0 0 Items[{tag:{110skill:1b}}].tag.110skill


