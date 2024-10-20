return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- tsserver will be automatically installed with mason and loaded with lspconfig
        tsserver = {
          settings = {
            typescript = {
              workspaceSymbols = {
                scope = "allOpenProjects",
                excludeLibrarySymbols = false,
              },
            },
          },
        },
      },
      ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
    },
  },
}
