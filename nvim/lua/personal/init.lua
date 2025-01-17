require("personal.packer")
require("personal.remap")

vim.cmd('set clipboard+=unnamedplus')
-- if linux and wsl
local in_wsl = os.getenv('WSL_DISTRO_NAME')
if in_wsl then
	vim.g.clipboard = {
		name = 'WslClipboard',
		copy = {
			["+"] = 'clip.exe',
			["*"] = 'clip.exe',
		},
		paste = {
			["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
			["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
		},
		cache_enabled = 0,
	}
end
