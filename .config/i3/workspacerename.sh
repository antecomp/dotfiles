#!/bin/bash
# interactively rename workspace with dmenu

full_name=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name')
name=$(echo $full_name | grep -Po '(?<=:).*(?=")')
number=$(echo $full_name | grep -Po '(?<=^")[0-9]+')
new_name=$(printf "\n${name}" | dmenu -b -p "rename-workspace-${number}")
if [[ $new_name =~ [0-9].* ]]; then
    new_workspace_name="${new_name}"
elif [[ -n "${new_name}" ]]; then
    new_workspace_name="${number}:${new_name}"
else
    new_workspace_name="${number}"
fi
i3-msg "rename workspace to \"${new_workspace_name}\""
