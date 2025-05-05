local suits = {
  Hearts = SMODS.Atlas {
    key = "collab_onw_hearts",
    path = "collab_ONW_hearts_1.png",
    px = 71,
    py = 95,
  },
  Spades = SMODS.Atlas {
    key = "collab_onw_spades",
    path = "collab_ONW_spades_1.png",
    px = 71,
    py = 95,
  },
  Diamonds = SMODS.Atlas {
    key = "collab_onw_diamonds",
    path = "collab_ONW_diamonds_1.png",
    px = 71,
    py = 95,
  },
  Clubs = SMODS.Atlas {
    key = "collab_onw_clubs",
    path = "collab_ONW_clubs_1.png",
    px = 71,
    py = 95,
  },
}

SMODS.Atlas {
  key = "modicon",
  path = "modicon.png",
  px = 32,
  py = 32
}

for suit, atlas in pairs(suits) do
  SMODS.DeckSkin {
    key = atlas.key,
    suit = suit,
    loc_txt = "Our New World",
    palettes = {
      {
        key = "lc",
        ranks = {'Jack', 'Queen', "King"},
        display_ranks = {"King", "Queen", "Jack"},
        atlas = atlas.key,
        pos_style = 'collab'
      }
    }
  }
end