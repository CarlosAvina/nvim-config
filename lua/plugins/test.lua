local Util = require("lazyvim.util")

return {
  {
    "nvim-neotest/neotest",
    dependencies = { "haydenmeade/neotest-jest" },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "node './node_modules/jest/bin/jest.js' --",
          jestConfigFile = "jest.config.ts",
          env = { CI = true },
          cwd = Util.get_root(),
        })
      )
    end,
  },
}
