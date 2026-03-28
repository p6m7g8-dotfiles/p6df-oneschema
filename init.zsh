# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::oneschema::deps()
#
#>
######################################################################
p6df::modules::oneschema::deps() {
  ModuleDeps=()
}

######################################################################
#<
#
# Function: str str = p6df::modules::oneschema::prompt::mod()
#
#  Returns:
#	str - str
#
#  Environment:	 P6_DFZ_PROFILE_ONESCHEMA
#>
######################################################################
p6df::modules::oneschema::prompt::mod() {
  local str=""
  local profile="$P6_DFZ_PROFILE_ONESCHEMA"

  if p6_string_blank_NOT "$profile"; then
    if p6_string_blank_NOT "$ONESCHEMA_API_KEY"; then
      str="oneschema:\t  ${profile}: api"
    fi
  fi

  p6_return_str "$str"
}

######################################################################
#<
#
# Function: p6df::modules::oneschema::profile::on(profile, code)
#
#  Args:
#	profile -
#	code - shell code block
#
#  Environment:	 P6_DFZ_PROFILE_ONESCHEMA
#>
######################################################################
p6df::modules::oneschema::profile::on() {
  local profile="$1"
  local code="$2"

  p6_run_code "$code"

  p6_env_export "P6_DFZ_PROFILE_ONESCHEMA" "$profile"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::oneschema::profile::off(code)
#
#  Args:
#	code - shell code block previously passed to profile::on
#
#  Environment:	 P6_DFZ_PROFILE_ONESCHEMA
#>
######################################################################
p6df::modules::oneschema::profile::off() {
  local code="$1"

  p6_env_unset_from_code "$code"
  p6_env_export_un P6_DFZ_PROFILE_ONESCHEMA

  p6_return_void
}
