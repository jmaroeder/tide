function _tide_item_vi_mode
    bgColorName=tide_vi_mode_"$fish_bind_mode"_bg_color set -g tide_vi_mode_bg_color $$bgColorName
    colorName=tide_vi_mode_"$fish_bind_mode"_color iconName=tide_vi_mode_"$fish_bind_mode"_icon \
        printf '%s' (set_color $$colorName || echo)$$iconName
end