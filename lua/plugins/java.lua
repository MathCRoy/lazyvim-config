return {
  "mfussenegger/nvim-jdtls",
  opts = {
    root_dir = function(fname)
      return require("lspconfig.util").root_pattern("settings.gradle", "settings.gradle.kts")(fname)
        or require("lspconfig.util").root_pattern("build.gradle", "build.gradle.kts", "pom.xml")(fname)
    end,
    settings = {
      java = {
        inlayHints = {
          parameterNames = {
            enabled = "none",
          },
        },
      },
    },
  },
}
