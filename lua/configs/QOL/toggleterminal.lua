require'toggleterm'.setup({
	open_mapping = [[<C-q>]],
	hide_numbers = true, -- hide the number column in toggleterm buffers
	size=20,
	shade_terminals=true,
	start_in_insert=true,
	insert_mappings=true,
	direction="float",
	close_on_exit=true,
	shell=vim.o.shell,
	float_opts={
		border="curved",
		winblend=0,
		highlights={
			border="Normal",
			background="Normal",
		},
	},
})
