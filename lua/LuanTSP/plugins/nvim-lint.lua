local status, lint = pcall(require, "lint")
if not status then
  return
end

lint.linters_by_ft = {
  python = { 'pylint' },
  markdown = { 'vale' },
  typescript = { 'eslint_d' },
  javascript = { 'eslint_d' },
}
