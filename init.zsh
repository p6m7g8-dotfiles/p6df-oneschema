# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::oneschema::deps()
#
#>
######################################################################
p6df::modules::oneschema::deps() {
  ModuleDeps=(p6m7g8-dotfiles/p6common)
}

######################################################################
#<
#
# Function: words oneschema = p6df::modules::oneschema::profile::mod()
#
#  Returns:
#	words - oneschema
#
#  Environment:	 ONESCHEMA_API_KEY
#>
######################################################################
p6df::modules::oneschema::profile::mod() {

  p6_return_words 'oneschema' '$ONESCHEMA_API_KEY'
}
