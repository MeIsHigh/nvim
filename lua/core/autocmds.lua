local timer = vim.loop.new_timer()
vim.api.nvim_create_autocmd({"TextChanged", "TextChangedI", "CmdlineEnter"}, {
  pattern = "*",
  callback = function()
    if vim.bo.modifiable and vim.bo.modified and vim.fn.expand("%") ~= "" then
      timer:stop()
      timer:start(300, 0, vim.schedule_wrap(function()
        vim.cmd("silent! write")
      end))
    end
  end,
})
