-- Filter out PHP/Laravel diagnostics: only show errors
local function filter_php_diagnostics()
  local original_handler = vim.lsp.handlers["textDocument/publishDiagnostics"]
  vim.lsp.handlers["textDocument/publishDiagnostics"] = function(err, result, ctx, config)
    if result and result.diagnostics then
      result.diagnostics = vim.tbl_filter(function(diagnostic)
        -- Filter out warnings/info/hints
        if diagnostic.severity ~= vim.diagnostic.severity.ERROR then
          return false
        end
        -- Filter out type mismatch false positives
        local msg = diagnostic.message or ""
        if msg:match("Expected type") then
          return false
        end
        if msg:match("Undefined type") then
          return false
        end
        if msg:match("does not exist on class") then
          return false
        end
        return true
      end, result.diagnostics)
    end
    if original_handler then
      return original_handler(err, result, ctx, config)
    end
  end
end

filter_php_diagnostics()

return {}
