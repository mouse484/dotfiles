# --- Matching ---
setopt +o nomatch

# --- Directory/Globbing ---
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt extended_glob
setopt globdots
setopt mark_dirs

# --- Completion ---
setopt correct
setopt complete_in_word
setopt always_to_end

# --- History ---
setopt share_history
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_save_no_dups
setopt hist_ignore_space
setopt inc_append_history

# --- Input/Output ---
setopt interactive
setopt no_beep
setopt interactive_comments
setopt prompt_subst
setopt auto_remove_slash

# --- Job Control ---
setopt notify
setopt long_list_jobs
