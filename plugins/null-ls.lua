return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    local null_ls = require "null-ls"
    config.sources = {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
      -- null_ls.builtins.formatting.eslint_d,
      -- null_ls.builtins.diagnostics.eslint_d,
      -- null_ls.builtins.code_actions.eslint_d,
    }
    config.handlers = {
      -- for prettier
      prettier = function()
        require("null-ls").register(
          require("null-ls").builtins.formatting.prettier.with {
            condition = function(utils)
              return utils.root_has_file "package.json"
                or utils.root_has_file ".prettierrc"
                or utils.root_has_file ".prettierrc.json"
                or utils.root_has_file ".prettierrc.js"
            end,
          }
        )
      end,
    }
    return config -- return final config table
  end,
}
