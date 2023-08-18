# run npm script (requires jq)
ns() {
  local script
 
  local cmd
  if [[ -f "yarn.lock" ]]; then
    cmd="yarn"
  else
    cmd="npm run"
  fi
  
  script=$(cat package.json | jq -r '.scripts | keys[] ' | sort | fzf) && $cmd $(echo "$script")
}
