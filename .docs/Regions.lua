-- 8.1.5.29737

local Regions = {

	----------------------------------------
	-- ActionButton
	-- * Unsupported: FlyoutArrow, FlyoutBorder, FlyoutBorderShadow
	---

	-- @CheckButton
	Action = {
		Width = 36,                                                       -- Default
		Height = 36,                                                      -- Default

		----------------------------------------
		-- Backdrop                                                       --[1]--[DONE]
		---

		-- @MultiBarButton
		-- * Used only on MultiBar buttons.
		Backdrop = {
			Name = "FloatingBG",
			Type = "Texture",

			Texture = [[Interface\Buttons\UI-Quickslot]],                 -- XML
			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "BACKGROUND",                                     -- XML
			DrawLevel = -1,                                               -- XML

			Color = {1, 1, 1, 0.4},                                       -- Default, XML Alpha
			BlendMode = "BLEND",                                          -- Default

			Width = 66,                                                   -- Calculated
			Height = 66,                                                  -- Calculated

			Points = {
				{ -- [1]
					Point = "TOPLEFT",                                    -- XML
					OffsetX = -15,                                        -- XML
					OffsetY = 15,                                         -- XML
				},
				{ -- [2]
					Point = "BOTTOMRIGHT",                                -- XML
					OffsetX = 15,                                         -- XML
					OffsetY = -15,                                        -- XML
				},
			},
		},

		----------------------------------------
		-- Icon                                                           --[2]--[DONE]
		---

		-- @ActionButton
		Icon = {
			Key = "icon",
			Name = "Icon",
			Type = "Texture",

			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "BACKGROUND",                                     -- XML
			DrawLevel = 0,                                                -- XML

			Width = 36,                                                   -- In-Game
			Height = 36,                                                  -- In-Game

			Point = "TOPLEFT",                                            -- Default
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- Normal                                                         --[3]--[DONE]
		---

		-- @Button
		-- * Visible in default state.
		-- * Hidden in the "pushed" state.
		Normal = {
			Key = "NormalTexture",
			Func = "GetNormalTexture",
			Name = "NormalTexture",
			Type = "Texture",

			Texture = [[Interface\Buttons\UI-Quickslot2]],                -- XML
			TexCoords = {0, 1, 0, 1},                                     -- Default
			EmptyTexture = [[Interface\Buttons\UI-Quickslot]],            -- Lua

			DrawLayer = "ARTWORK",                                        -- Default
			DrawLevel = 0,                                                -- Default

			Color = {1, 1, 1, 1},                                         -- Default
			EmptyColor = {1, 1, 1, 0.5},                                  -- Lua
			BlendMode = "BLEND",                                          -- Default

			Width = 66,                                                   -- Calculated
			Height = 66,                                                  -- Calculated

			Points = {
				{ -- [1]
					Point = "TOPLEFT",                                    -- XML
					OffsetX = -15,                                        -- XML
					OffsetY = 15,                                         -- XML
				},
				{ -- [2]
					Point = "BOTTOMRIGHT",                                -- XML
					OffsetX = 15,                                         -- XML
					OffsetY = -15,                                        -- XML
				},
			},
		},

		----------------------------------------
		-- Disabled                                                       --[4]--[DONE]
		---

		-- @Button
		-- * Visible in the "disabled" state.
		-- * Unused.
		Disabled = {
			Func = "GetDisabledTexture",
			Type = "Texture",
			Hide = true,
		},

		----------------------------------------
		-- Pushed                                                         --[5]--[DONE]
		---

		-- @Button
		-- * Visible in the "pushed" state.
		Pushed = {
			Func = "GetPushedTexture",
			Type = "Texture",

			Texture = [[Interface\Buttons\UI-Quickslot-Depress]],         -- XML
			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "ARTWORK",                                        -- Default
			DrawLevel = 0,                                                -- Default

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "BLEND",                                          -- Default

			Width = 36,                                                   -- In-Game
			Height = 36,                                                  -- In-Game

			Point = "TOPLEFT",                                            -- Default
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- Flash                                                          --[6]--[DONE]
		---

		-- @ActionButton
		-- * Flashes in the "active" state.
		Flash = {
			Key = "Flash",
			Name = "Flash",
			Type = "Texture",

			Texture = [[Interface\Buttons\UI-QuickslotRed]],              -- XML
			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "ARTWORK",                                        -- XML
			DrawLevel = 1,                                                -- XML

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "BLEND",                                          -- Default

			Width = 36,                                                   -- In-Game
			Height = 36,                                                  -- In-Game

			Point = "TOPLEFT",                                            -- Default
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- HotKey                                                         --[7]--[DONE]
		---

		-- @ActionButton
		HotKey = {
			Key = "HotKey",
			Name = "HotKey",
			Type = "Text",

			JustifyH = "RIGHT",                                           -- XML
			JustifyV = "MIDDLE",                                          -- Default
			FontObject = "NumberFontNormalSmallGray",                     -- XML

			DrawLayer = "ARTWORK",                                        -- XML
			DrawLevel = 2,                                                -- XML

			--Color = {0.6, 0.6, 0.6, 1},                                 -- XML (FontObject), Do Not Modify

			Width = 36,                                                   -- XML
			Height = 10,                                                  -- XML

			Point = "TOPLEFT",                                            -- XML
			OffsetX = 1,                                                  -- XML
			OffsetY = -3,                                                 -- XML
		},

		----------------------------------------
		-- Count                                                          --[8]--[DONE]
		---

		-- @ActionButton
		Count = {
			Key = "Count",
			Name = "Count",
			Type = "Text",

			JustifyH = "RIGHT",                                           -- XML
			JustifyV = "MIDDLE",                                          -- Default
			FontObject = "NumberFontNormal",                              -- XML

			DrawLayer = "ARTWORK",                                        -- XML
			DrawLevel = 2,                                                -- XML

			Color = {1, 1, 1, 1},                                         -- XML (FontObject)

			Width = 1,                                                    -- In-Game
			Height = 1,                                                   -- In-Game

			Point = "TOPLEFT",                                            -- XML
			OffsetX = -2,                                                 -- XML
			OffsetY = 2,                                                  -- XML
		},

		----------------------------------------
		-- Border                                                         --[9]--[DONE]
		---

		-- @ActionButton
		-- * Equipped Item Border
		Border = {
			Key = "Border",
			Name = "Border",
			Type = "Texture",

			Texture = [[Interface\Buttons\UI-ActionButton-Border]],       -- XML
			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 0,                                                -- Default

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "ADD",                                            -- XML

			Width = 62,                                                   -- XML
			Height = 62,                                                  -- XML

			Point = "CENTER",                                             -- XML
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- Checked                                                        --[10]--[DONE]
		---

		-- @CheckButton
		-- * Visible in the "checked" state.
		Checked = {
			Func = "GetCheckedTexture",
			Type = "Texture",

			Texture = [[Interface\Buttons\CheckButtonHilight]],           -- XML
			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "OVERLAY",                                        -- In-Game
			DrawLevel = 0,                                                -- Default

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "ADD",                                            -- XML

			Width = 36,                                                   -- In-Game
			Height = 36,                                                  -- In-Game

			Point = "TOPLEFT",                                            -- Default
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- Name                                                          --[11]--[DONE]
		---

		-- @ActionButton
		Name = {
			Key = "Name",
			Name = "Name",
			Type = "Text",

			JustifyH = "CENTER",                                          -- Default
			JustifyV = "MIDDLE",                                          -- Default
			FontObject = "GameFontHighlightSmallOutline",                 -- XML

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 0,                                                -- Default

			Color = {1, 1, 1, 1},                                         -- XML (FontObject)

			Width = 36,                                                   -- XML
			Height = 10,                                                  -- XML

			Point = "BOTTOM",                                             -- XML
			OffsetX = 0,                                                  -- XML
			OffsetY = 2,                                                  -- XML
		},

		----------------------------------------
		-- NewAction                                                      --[12]--[DONE]
		---

		-- @ActionButton
		NewAction = {
			Key = "NewActionTexture",
			Type = "Texture",

			Atlas = {                                                     -- XML
				ID = "bags-newitem",
				UseSize = false,                                          -- XML

				Texture = [[Interface\ContainerFrame\Bags]],
				TexCoords = {0.363281, 0.535156, 0.00390625, 0.175781},

				Width = 44,
				Height = 44,
			},

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 1,                                                -- XML

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "ADD",                                            -- XML

			Width = 44,                                                   -- XML
			Height = 44,                                                  -- XML

			Point = "CENTER",                                             -- XML
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- SpellHighlight                                                 --[13]--[DONE]
		---

		-- @ActionButton
		SpellHighlight = {
			Key = "SpellHighlightTexture",
			Type = "Texture",

			Atlas = {                                                     -- XML
				ID = "bags-newitem",
				UseSize = false,                                          -- XML

				Texture =[[Interface\ContainerFrame\Bags]],
				TexCoords = {0.363281, 0.535156, 0.00390625, 0.175781},

				Width = 44,                                               -- XML
				Height = 44,                                              -- XML
			},

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 1,                                                -- XML

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "ADD",                                            -- XML

			Point = "CENTER",                                             -- XML
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- AutoCastable                                                   --[14]--[DONE]
		---

		-- @ActionButton
		AutoCastable = {
			Key = "AutoCastable",
			Type = "Texture",

			Texture = [[Interface\Buttons\UI-AutoCastableOverlay]],       -- XML
			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 1,                                                -- XML

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "BLEND",                                          -- Default

			Width = 58,                                                   -- XML
			Height = 58,                                                  -- XML

			Point = "CENTER",                                             -- XML
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- Highlight                                                      --[15]--[DONE]
		---

		-- @Button
		-- * Visible on mouse-over.
		Highlight = {
			Func = "GetHighlightTexture",
			Type = "Texture",

			Texture = [[Interface\Buttons\ButtonHilight-Square]],         -- XML
			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "HIGHLIGHT",                                      -- In-Game
			DrawLevel = 0,                                                -- Default

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "ADD",                                            -- XML

			Width = 36,                                                   -- In-Game
			Height = 36,                                                  -- In-Game

			Point = "TOPLEFT",                                            -- Default
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- AutoCastShine                                                  --[F1]--[DONE]
		---

		-- @ActionButton
		AutoCastShine = {
			Key = "AutoCastShine",
			Name = "Shine",
			Type = "Frame",

			Width = 28,                                                   -- XML
			Height = 28,                                                  -- XML

			Point = "CENTER",                                             -- XML
			OffsetX = 0,                                                  -- XML
			OffsetY = 0,                                                  -- XML
		},

		----------------------------------------
		-- Cooldown                                                       --[F2]--[DONE]
		---

		-- @ActionButton
		Cooldown = {
			Key = "cooldown",
			Name = "Cooldown",
			Type = "Frame",

			SwipeColor = {0, 0, 0, 0.8},                                  -- Normal
			--SwipeColor = {0.17, 0, 0, 0.8},                             -- LoC
			--SwipeColor = {1, 1, 1, 0.8},                                -- XML

			Width = 36,                                                   -- XML
			Height = 36,                                                  -- XML

			Point = "CENTER",                                             -- XML
			OffsetX = 0,                                                  -- XML
			OffsetY = -1,                                                 -- XML
		},

		----------------------------------------
		-- ChargeCooldown                                                 --[F3]--[DONE]
		---

		-- @ActionButton
		ChargeCooldown = {
			Key = "chargeCooldown",
			Type = "Frame",

			Width = 36,                                                   -- Lua / SetAllPoints
			Height = 36,                                                  -- Lua / SetAllPoints

			SetAllPoints = true,                                          -- Lua
		},
	},

	----------------------------------------
	-- AuraButton
	---

	-- @Button
	Aura = {
		Width = 30,
		Height = 30,

		----------------------------------------
		-- Icon                                                           --[1]--[DONE]
		---

		-- @AuraButton
		Icon = {
			Name = "Icon",
			Type = "Texture",

			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "BACKGROUND",                                     -- XML
			DrawLevel = 0,                                                -- Default

			Width = 30,                                                   -- In-Game
			Height = 30,                                                  -- In-Game

			Point = "TOPLEFT",                                            -- Default
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- Count                                                          --[2]--[DONE]
		---

		-- @AuraButton
		Count = {
			Key = "count",
			Name = "Count",
			Type = "Text",

			JustifyH = "CENTER",                                          -- Default
			JustifyV = "MIDDLE",                                          -- Default
			FontObject = "NumberFontNormal",                              -- XML

			DrawLayer = "BACKGROUND",                                     -- XML
			DrawLevel = 0,                                                -- Default

			Color = {1, 1, 1, 1},                                         -- XML (FontObject)

			Width = 1,                                                    -- In-Game
			Height = 1,                                                   -- In-Game

			Point = "BOTTOMRIGHT",                                        -- XML
			OffsetX = -2,                                                 -- XML
			OffsetY = 2,                                                  -- XML
		},

		----------------------------------------
		-- Duration                                                       --[3]--[DONE]
		---

		-- @AuraButton
		Duration = {
			Key = "duration",
			Name = "Duration",
			Type = "Text",

			JustifyH = "CENTER",                                          -- Default
			JustifyV = "MIDDLE",                                          -- Default
			FontObject = "GameFontNormalSmall",                           -- XML

			DrawLayer = "BACKGROUND",                                     -- XML
			DrawLevel = 0,                                                -- Default

			Color = {1, 1, 1, 1},                                         -- XML (FontObject)

			Width = 12,                                                   -- In-Game
			Height = 11,                                                  -- In-Game

			Point = "TOP",                                                -- XML
			RelPoint = "BOTTOM",                                          -- XML
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- DebuffBorder                                                   --[4]--[DONE]
		---

		-- @DebuffButton
		DebuffBorder = {
			Name = "Border",
			Type = "Texture",

			Texture = [[Interface\Buttons\UI-Debuff-Overlays]],           -- XML
			TexCoords = {0.296875, 0.5703125, 0, 0.515625},               -- XML

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 0,                                                -- Default

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "BLEND",                                          -- Default

			Width = 33,                                                   -- XML
			Height = 32,                                                  -- XML

			Point = "CENTER",                                             -- XML
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- EnchantBorder                                                  --[4]--[DONE]
		---

		-- @TempEnchantButton
		EnchantBorder = {
			Name = "Border",
			Type = "Texture",

			Texture = [[Interface\Buttons\UI-TempEnchant-Border]],        -- XML
			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 0,                                                -- Default

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "BLEND",                                          -- Default

			Width = 32,                                                   -- XML
			Height = 32,                                                  -- XML

			Point = "CENTER",                                             -- XML
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- Normal                                                         --[X]--[DONE]
		---

		-- @Button
		-- * Unused.
		Normal = {
			Func = "GetNormalTexture",
			Type = "Texture",
			Hide = true,
		},

		----------------------------------------
		-- Pushed                                                         --[X]--[DONE]
		---

		-- @Button
		-- * Unused.
		Pushed = {
			Func = "GetPushedTexture",
			Type = "Texture",
			Hide = true,
		},

		----------------------------------------
		-- Disabled                                                       --[X]--[DONE]
		---

		-- @Button
		-- * Unused.
		Disabled = {
			Func = "GetDisabledTexture",
			Type = "Texture",
			Hide = true,
		},

		----------------------------------------
		-- Highlight                                                      --[X]--[DONE]
		---

		-- @Button
		-- * Unused.
		Highlight = {
			Func = "GetHighlightTexture",
			Type = "Texture",
			Hide = true,
		},
	},

	----------------------------------------
	-- ItemButton
	-- * Unsupported: Stock (Vendor)
	---

	-- @Button
	Item = {
		Width = 37,
		Height = 37,

		----------------------------------------
		-- Icon                                                           --[1]--[DONE]
		---

		-- @ItemButton
		Icon = {
			Key = "icon",
			Name = "IconTexture",
			Type = "Texture",

			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "BORDER",                                         -- XML
			DrawLevel = 0,                                                -- Default

			Width = 37,                                                   -- In-Game
			Height = 37,                                                  -- In-Game

			Point = "TOPLEFT",                                            -- Default
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- Normal                                                         --[2]--[DONE]
		---

		-- @Button
		-- * Visible in default state.
		-- * Hidden in the "pushed" state.
		Normal = {
			Name = "NormalTexture",
			Func = "GetNormalTexture",
			Type = "Texture",

			Texture = [[Interface\Buttons\UI-Quickslot2]],                -- XML
			TexCoords = {0, 1, 0, 1},                                     -- Default
			EmptyTexture = [[Interface\Buttons\UI-Quickslot]],            -- In-Game

			DrawLayer = "ARTWORK",                                        -- Default
			DrawLevel = 0,                                                -- Default

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "BLEND",                                          -- Default

			Width = 64,                                                   -- XML
			Height = 64,                                                  -- XML

			Point = "CENTER",                                             -- XML
			OffsetX = 0,                                                  -- XML
			OffsetY = -1,                                                 -- XML
		},

		----------------------------------------
		-- Pushed                                                         --[3]--[DONE]
		---

		-- @Button
		-- * Visible in the "pushed" state.
		Pushed = {
			Func = "GetPushedTexture",
			Type = "Texture",

			Texture = [[Interface\Buttons\UI-Quickslot-Depress]],         -- XML
			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "ARTWORK",                                        -- Default
			DrawLevel = 0,                                                -- Default

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "BLEND",                                          -- Default

			Width = 37,                                                   -- In-Game
			Height = 37,                                                  -- In-Game

			Point = "TOPLEFT",                                            -- Default
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- Count                                                          --[4]--[DONE]
		---

		-- @ItemButton
		Count = {
			Key = "count",
			Name = "Count",
			Type = "Text",

			JustifyH = "RIGHT",                                           -- XML
			JustifyV = "MIDDLE",                                          -- Default
			FontObject = "NumberFontNormal",                              -- XML

			DrawLayer = "ARTWORK",                                        -- XML
			DrawLevel = 2,                                                -- XML

			Color = {1, 1, 1, 1},                                         -- XML (FontObject)

			Width = 1,                                                    -- In-Game
			Height = 1,                                                   -- In-Game

			Point = "BOTTOMRIGHT",                                        -- XML
			OffsetX = -5,                                                 -- XML
			OffsetY = 2,                                                  -- XML
		},

		----------------------------------------
		-- IconBorder                                                     --[5]--[DONE]
		---

		-- @ItemButton
		IconBorder = {
			Key = "IconBorder",
			Type = "Texture",

			Texture = [[Interface\Common\WhiteIconFrame]],                -- XML, Changes to [[Interface\Artifacts\RelicIconFrame]] if it's an artifact.
			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 0,                                                -- Default

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "BLEND",                                          -- Default

			Width = 37,                                                   -- XML
			Height = 37,                                                  -- XML

			Point = "CENTER",                                             -- XML
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- SlotHighlight                                                   --[6]--[DONE]
		---

		-- @BagSlotItemButton
		SlotHighlight = {
			Key = "SlotHighlightTexture",
			Type = "Texture",

			Texture = [[Interface\Buttons\CheckButtonHilight]],           -- XML
			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 0,                                                -- Default

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "ADD",                                            -- XML

			Width = 30,                                                   -- XML / SetAllPoints, 40 @Backpack
			Height = 30,                                                  -- XML / SetAllPoints, 40 @Backpack

			SetAllPoints = true,                                          -- XML
		},

		----------------------------------------
		-- IconOverlay                                                    --[7]--[DONE]
		---

		-- @ItemButton
		IconOverlay = {
			Key = "IconOverlay",
			Type = "Texture",

			Atlas = {                                                     -- Lua
				ID = "AzeriteIconFrame",
				UseSize = false,

				Texture = [[Interface\Azerite\Azerite]],
				TexCoords = {0.59375, 0.84375, 0.800781, 0.863281},

				Width = 64,
				Height = 64,
			},

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 1,                                                -- XML

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "BLEND",                                          -- Default

			Width = 37,                                                   -- XML
			Height = 37,                                                  -- XML

			Point = "CENTER",                                             -- XML
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- JunkIcon                                                       --[8]--[DONE]
		---

		-- @ContainerItemButton
		JunkIcon = {
			Key = "JunkIcon",
			Type = "Texture",

			Atlas = {                                                     -- XML
				ID = "bags-junkcoin",
				UseSize = true,                                           -- XML

				Texture = [[Interface\ContainerFrame\Bags]],
				TexCoords = {0.863281, 0.941406, 0.28125, 0.351562},

				Width = 20,
				Height = 18,
			},

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 1,                                                -- XML

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "BLEND",                                          -- Default

			Point = "TOPLEFT",                                            -- XML
			OffsetX = 1,                                                  -- XML
			OffsetY = 0,                                                  -- XML
		},

		----------------------------------------
		-- UpgradeIcon                                                    --[9]--[DONE]
		---

		-- @ContainerItemButton
		UpgradeIcon = {
			Key = "JunkIcon",
			Type = "Texture",

			Atlas = {                                                     -- XML
				ID = "bags-greenarrow",
				UseSize = true,                                           -- XML

				Texture = [[Interface\ContainerFrame\Bags]],
				TexCoords = {0.3125, 0.390625, 0.648438, 0.734375},

				Width = 20,
				Height = 22,
			},

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 1,                                                -- XML

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "BLEND",                                          -- Default

			Point = "TOPLEFT",                                            -- XML
			OffsetX = 0,                                                  -- XML
			OffsetY = 0,                                                  -- XML
		},

		----------------------------------------
		-- QuestIcon                                                      --[10]--[DONE]
		---

		-- @ContainerItemButton
		QuestIcon = {
			Key = "IconQuestTexture",
			Type = "Texture",

			--Texture = [[Interface\\ContainerFrame\\UI-Icon-QuestBorder]]-- Active   TEXTURE_ITEM_QUEST_BORDER
			--Texture = [[Interface\\ContainerFrame\\UI-Icon-QuestBang]], -- Inactive TEXTURE_ITEM_QUEST_BANG
			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 2,                                                -- XML

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "BLEND",                                          -- Default

			Width = 37,                                                   -- XML
			Height = 38,                                                  -- XML

			Point = "TOP",                                                -- XML
			OffsetX = 0,                                                  -- XML
			OffsetY = 0,                                                  -- XML
		},

		----------------------------------------
		-- NewItem                                                        --[11]--[DONE]
		---

		-- @ContainerItemButton
		NewItem = {
			Key = "NewItemTexture",
			Type = "Texture",

			Atlas = {                                                     -- XML
				ID = "bags-glow-green",
				UseSize = true,                                           -- XML

				Texture = [[Interface\ContainerFrame\Bags]],
				TexCoords = {0.703125, 0.855469, 0.00390625, 0.15625},

				Width = 39,
				Height = 39,
			},

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 2,                                                -- XML

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "ADD",                                            -- XML

			Point = "CENTER",                                             -- XML
			OffsetX = 0,                                                  -- XML
			OffsetY = 0,                                                  -- XML
		},

		----------------------------------------
		-- SearchOverlay                                                  --[12]--[DONE]
		---

		-- @ItemButton
		SearchOverlay = {
			Key = "searchOverlay",
			Name = "SearchOverlay",
			Type = "Texture",

			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 4,                                                -- XML

			Color = {0, 0, 0, 0.8},                                       -- XML
			BlendMode = "BLEND",                                          -- Default

			Width = 37,                                                   -- XML / SetAllPoints
			Height = 37,                                                  -- XML / SetAllPoints

			SetAllPoints = true,                                          -- XML
		},

		----------------------------------------
		-- ItemContextOverlay                                             --[13]--[DONE]
		---

		-- @ItemButton
		ItemContextOverlay = {
			Key = "ItemContextOverlay",
			Type = "Texture",

			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "OVERLAY",                                        -- XML
			DrawLevel = 5,                                                -- XML

			Color = {0, 0, 0, 0.8},                                       -- XML
			BlendMode = "BLEND",                                          -- Default

			Width = 37,                                                   -- XML / SetAllPoints
			Height = 37,                                                  -- XML / SetAllPoints

			SetAllPoints = true,                                          -- XML
		},

		----------------------------------------
		-- Highlight                                                      --[14]--[DONE]
		---

		-- @Button
		-- * Visible on mouse-over.
		Highlight = {
			Func = "GetHighlightTexture",
			Type = "Texture",

			Texture = [[Interface\Buttons\ButtonHilight-Square]],         -- XML
			TexCoords = {0, 1, 0, 1},                                     -- Default

			DrawLayer = "HIGHLIGHT",                                      -- In-Game
			DrawLevel = 0,                                                -- Default

			Color = {1, 1, 1, 1},                                         -- Default
			BlendMode = "ADD",                                            -- XML

			Width = 37,                                                   -- In-Game
			Height = 37,                                                  -- In-Game

			Point = "TOPLEFT",                                            -- Default
			OffsetX = 0,                                                  -- Default
			OffsetY = 0,                                                  -- Default
		},

		----------------------------------------
		-- Cooldown                                                       --[F2]--[DONE]
		---

		-- @ContainerItemButton
		Cooldown = {
			Name = "Cooldown",
			Type = "Frame",

			SwipeColor = {0, 0, 0, 0.8},                                  -- Normal
			--SwipeColor = {0.17, 0, 0, 0.8},                             -- LoC
			--SwipeColor = {1, 1, 1, 0.8},                                -- XML

			Width = 36,                                                   -- XML
			Height = 36,                                                  -- XML

			Point = "CENTER",                                             -- XML
			OffsetX = 0,                                                  -- XML
			OffsetY = -1,                                                 -- XML
		},
	},
}
