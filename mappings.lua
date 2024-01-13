-- file tipe yg berlaku organize imports
local allowed_filetypes = {
  "typescript",
  "typescriptreact",
  "tsx",
  "javascript",
  "javascriptreact",
  "jsx",
}

-- modifikasi save file untuk organize import
local function organizeImports()
  local filetype = vim.bo.filetype
  if vim.tbl_contains(allowed_filetypes, filetype) then
    local ts = require "typescript"
    vim.defer_fn(function()
      ts.actions.organizeImports()
      ts.actions.fixAll()
      vim.cmd "update"
    end, 300)
    ts.actions.removeUnused()
  else
    vim.cmd "write"
  end
end

local function close()
  local bufs = vim.fn.getbufinfo { buflisted = true }
  require("astronvim.utils.buffer").close(0)
  if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then
    require("alpha").start(true)
  end
end

local function closeAll()
  require("astronvim.utils.buffer").close_all()
  if require("astronvim.utils").is_available "alpha-nvim" then
    require("alpha").start(true)
  end
end

-- Mapping data with "desc" stored directly by vim.keymap.set().
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },

    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },

    -- quick save & organizeImports
    ["<C-s>"] = { organizeImports, desc = "save & organize imports" },

    ["<leader>c"] = { close, desc = "Close buffer" },
    ["<leader>C"] = { closeAll, desc = "Close all buffers" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
