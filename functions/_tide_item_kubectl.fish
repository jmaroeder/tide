function _tide_item_kubectl
    if test (command -v kubectl)
        set_color $tide_kubectl_color
        printf '%s' $tide_kubectl_icon' ' (kubectl config view --minify --output "jsonpath={.current-context}{':'}{..namespace}" 2>/dev/null)
    end
end
