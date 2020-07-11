function finish
    set_color red
    _title 'Overwrite tide config and fish_prompt?'
    # set_color normal

    _option y 'Yes'
    printf '%b' '\n\n'

    _option n 'No'
    printf '%b' '\n\n'

    switch (_menu 'Choice' y/n)
        case y
            cat "$_tide_dir/configure/fish_prompt.fish" >"$__fish_config_dir/functions/fish_prompt.fish"

            for var in $_tide_var_list
                set -e $var
            end
            set _tide_var_list

            for fakeVar in $fake_tide_var_list
                set -l normalVar (string replace 'fake_' '' $fakeVar)
                set -U $normalVar $$fakeVar
                set -a _tide_var_list $normalVar
                set -e $fakeVar
            end

            source "$__fish_config_dir/conf.d/_tide_Ω_run_on_startup.fish" # Reload important startup variables
    end

    _quit
end