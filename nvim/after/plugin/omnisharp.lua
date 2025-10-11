local pid = vim.fn.getpid()

local omnisharp_binary_path = vim.fn.expand("~/.cache/omnisharp-vim/omnisharp-roslyn/run")

require("lspconfig").omnisharp.setup {
  cmd = {
      omnisharp_binary_path,
      "--languageserver",
      "--hostPID",
      tostring(pid),
      "--dotnet-path",
      "/usr/share/dotnet/dotnet"
  },
  enable_import_completion = true,
  enable_roslyn_analyzers = true,
  organize_imports_on_format = true,
  sdk_include_prereleases = true,
  useModernNet = true
}
