#
# Bitbake
#
# Show info about current bitbake and machine selected
# Install it by linking this file to spaceship_prompt/sections/bitbake.zsh
# Add bitbake in theme configuration

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_BITBAKE_SHOW="${SPACESHIP_BITBAKE_SHOW=true}"
SPACESHIP_BITBAKE_PREFIX="${SPACESHIP_BITBAKE_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_BITBAKE_SUFFIX="${SPACESHIP_BITBAKE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_BITBAKE_SYMBOL="${SPACESHIP_BITBAKE_SYMBOL="🍷 "}"
SPACESHIP_BITBAKE_COLOR="${SPACESHIP_BITBAKE_COLOR="cyan"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show bitbake status
# spaceship_ prefix before section's name is required!
# Otherwise this section won't be loaded.
spaceship_bitbake() {
  # If SPACESHIP_BITBAKE_SHOW is false, don't show bitbake section
  [[ $SPACESHIP_BITBAKE_SHOW == false ]] && return

  # Check if bitbake command is available for execution
  #spaceship::exists bitbake || return

  # Show bitbake section only when we are in a poky subdir
  # http://zsh.sourceforge.net/Doc/Release/Expansion.html
  eval pwd | grep -E "\/poky\/build\/?" > /dev/null
  [[ $? -ne 0 ]] && return

  # Use quotes around unassigned local variables to prevent
  # getting replaced by global aliases
  # http://zsh.sourceforge.net/Doc/Release/Shell-Grammar.html#Aliasing
  local 'bitbake_status'

  if [ -n "$MACHINE" ]; then
    bitbake_status="Machine $MACHINE"
  else
    bitbake_status="Machine not defined!!"
  fi

  # Exit section if variable is empty
  [[ -z $bitbake_status ]] && return

  # Display bitbake section
  spaceship::section \
    "$SPACESHIP_BITBAKE_COLOR" \
    "$SPACESHIP_BITBAKE_PREFIX" \
    "$SPACESHIP_BITBAKE_SYMBOL$bitbake_status" \
    "$SPACESHIP_BITBAKE_SUFFIX"
}
