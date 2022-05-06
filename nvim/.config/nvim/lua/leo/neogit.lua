local neogit = require('neogit')
local diffview = require('diffview')

diffview.setup()

neogit.setup({
  kind = "tab",
  commit_popup = {
    kind = "split_above",
  },
  integrations = {
    diffview = true
  },
  sections = {
    untracked = {
      folded = false
    },
    unstaged = {
      folded = false
    },
    staged = {
      folded = false
    },
    stashes = {
      folded = true
    },
    unpulled = {
      folded = false
    },
    unmerged = {
      folded = true
    },
    recent = {
      folded = false
    },
  }
})
