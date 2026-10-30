#!/bin/bash
#=================================================
# COMMON VARIABLES
#=================================================

swap_needed=1024

project_version="1.8.17"
ldap_version="*"

#=================================================
# PERSONAL HELPERS
#=================================================

# activate_flarum_extension -d $db_name -s $extension; $short_extension is the db-stored short name (e.g. yippy-auth-ldap)
activate_flarum_extension() {
	declare -Ar args_array=( [d]=database= [s]=short_extension= )
	local database
	local short_extension
	ynh_handle_getopts_args "$@"
	database="${database:-$db_name}"

	local sql_command
	local old_extensions_enabled
	local addition
	local new_extensions_enabled

	sql_command="SELECT \`value\` FROM settings WHERE \`key\` = 'extensions_enabled'"
	old_extensions_enabled=$(ynh_mysql_db_shell $database <<< "$sql_command" | tail -1)

	# Adds $short_extension to the enabled list via jq only if absent
	new_extensions_enabled=$(jq -jrc --arg short_extension $short_extension '. + [ $short_extension ] | unique' <<< $old_extensions_enabled)

	sql_command="UPDATE \`settings\` SET \`value\`='$new_extensions_enabled' WHERE \`key\`='extensions_enabled';"
	ynh_mysql_db_shell $database <<< "$sql_command"
}

#=================================================
# WORKAROUND FOR FOR COMPATIBILITY ON BTRFS AND NON-BTRFS INSTANCES
#=================================================
chattr() {
  if findmnt -n -o FSTYPE / | grep -q btrfs; then
    echo "Running chattr $* (Btrfs detected)"
    command chattr "$@"
  else
    echo "Skipping chattr $* (not Btrfs)"
  fi
}
