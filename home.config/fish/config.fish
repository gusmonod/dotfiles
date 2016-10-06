# Path to Oh My Fish install.
#set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "$HOME/.config/omf"

# Load oh-my-fish configuration.
#source $OMF_PATH/init.fish

# Aliases
source ~/.bash_aliases

# Colors
set pastel_blue 6F79EE
set pastel_gray C1C1C1
set pastel_green 98BE5F
set pastel_light_green 73DD79
set pastel_red FC736F
set pastel_yellow FFFB5C

# Colors
set ___fish_git_prompt_color_branch (set_color $pastel_yellow)
set ___fish_git_prompt_color_upstream (set_color $pastel_green)
set ___fish_git_prompt_color_dirtystate (set_color $pastel_red)
set ___fish_git_prompt_color_stashstate (set_color $pastel_red)

# Options
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'

# Chars
set __fish_git_prompt_char_stateseparator ' '
set __fish_git_prompt_char_dirtystate '✗'
set __fish_git_prompt_char_untrackedfiles '★ '
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_equal '✓'
set __fish_git_prompt_char_upstream_behind '↓'

function fish_prompt --description 'Write out the prompt ex: 17:09 ➜ 127 ~ '
  set real_status $status  # save status

  # Time
  set_color $pastel_gray
  echo -n (date '+%H:%M ')

  # Git status
  set_color normal
  echo -n (git_prompt '%s ')

  # Directory name
  set_color $pastel_blue
  echo -n (basename (prompt_pwd))' '

  # Return status
  if [ $real_status -eq 0 ]
    set_color $pastel_light_green
    echo -n '⥼⬬ '
  else
    set_color $pastel_red
    echo -n "$real_status ⥼⬬ "
  end

  set_color normal
end

function fish_right_prompt
  N_ $argv
end

