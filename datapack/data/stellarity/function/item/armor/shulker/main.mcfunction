## Debuff immunity
  # Levitation
    effect clear @s[predicate=stellarity:item/armor/shulker/wearing_leggings] levitation 
    # Weakness
      effect clear @s[predicate=stellarity:item/armor/shulker/wearing_chestplate] weakness

    execute if entity @s[predicate=stellarity:item/armor/shulker/wearing_full_set] run function stellarity:item/armor/shulker/main_set_bonus
