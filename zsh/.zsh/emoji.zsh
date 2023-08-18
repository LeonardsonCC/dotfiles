emoji() {
  emojis=$(curl -sSL 'https://git.io/JXXO7')

  selected_emoji=$(echo $emojis | fzf)

  echo $selected_emoji | cut -d " " -f1 | wl-copy -n
}
