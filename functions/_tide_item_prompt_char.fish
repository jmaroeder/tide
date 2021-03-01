function _tide_item_prompt_char
    if test $_tide_last_pipestatus[-1] -eq 0
        set_color $tide_prompt_char_success_color
    else
        set_color $tide_prompt_char_failure_color
    end

    if test "$fish_key_bindings" = 'fish_default_key_bindings'
        printf '%s' $tide_prompt_char_icon' '
    else
        iconName=tide_prompt_char_vi_"$fish_bind_mode"_icon printf '%s' $$iconName' '
    end
end
