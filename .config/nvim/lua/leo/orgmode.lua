require('orgmode').setup({
  org_agenda_files = {'~/my-orgs/**/*'},
  org_default_notes_file = '~/my-orgs/init.org',
  mappings = {
    global = {
      org_agenda = 'gA',
      org_capture = 'gC'
    }
  },
  notifications = {
    enabled = true,
    cron_enabled = true,
    repeater_reminder_time = false,
    deadline_warning_reminder_time = false,
    reminder_time = 10,
    deadline_reminder = true,
    scheduled_reminder = true,
    notifier = function(tasks)
      local result = {}
      for _, task in ipairs(tasks) do
        require('orgmode.utils').concat(result, {
          string.format('# %s (%s)', task.category, task.humanized_duration),
          string.format('%s %s %s', string.rep('*', task.level), task.todo, task.title),
          string.format('%s: <%s>', task.type, task.time:to_string())
        })
      end

      if not vim.tbl_isempty(result) then
        require('orgmode.notifications.notification_popup'):new({ content = result })
      end
    end,
    cron_notifier = function(tasks)
      for _, task in ipairs(tasks) do
        local title = string.format('%s (%s)', task.category, task.humanized_duration)
        local subtitle = string.format('%s %s %s', string.rep('*', task.level), task.todo, task.title)
        local date = string.format('%s: %s', task.type, task.time:to_string())

        -- Linux
        if vim.fn.executable('notify-send') then
          vim.loop.spawn('notify-send', { args = { string.format('%s\n%s\n%s', title, subtitle, date) }})
        end
      end
    end
  },
})

