function map(estado, tecla, accion) vim.keymap.set(estado, "<" .. tecla .. ">", accion) end
function espacio(estado, tecla, accion) vim.keymap.set(estado, "<leader>" .. tecla, accion) end

vim.g.mapleader = " "

map("n", "C-s", ":w<CR>")
map("n", "C-b", ":NvimTreeToggle<CR>")

-- bufferline
map("n", "S-l", ":BufferNext<CR>")
map("n", "S-k", ":BufferPrevious<CR>")
map("n", "C-w", ":BufferClose<CR>")

-- copiar texto
map("n", "y", '"+y')
map("n", "p", '"+p')

-- terminal
map("n", "C-j", ":ToggleTerm<CR>")
map("t", "C-j", "exit<CR>")

-- atajos con espacios
espacio("n", "f", ":NvimTreeFocus<CR>")
