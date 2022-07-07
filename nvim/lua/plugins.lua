return require('packer').startup(
  function()
    use 'wbthomason/packer.nvim'

    -- Languages
    use 'neovim/nvim-lspconfig'
    use 'fatih/vim-go'
    use 'tpope/vim-rails'
    use 'vim-ruby/vim-ruby'
    use 'thoughtbot/vim-rspec'
    use 'pangloss/vim-javascript'
    use 'rodjek/vim-puppet'
    use 'elixir-editors/vim-elixir'
		use 'rescript-lang/vim-rescript'
		use 'jordwalke/vim-reasonml'

    -- Utilities
    use 'christoomey/vim-tmux-navigator'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'ervandew/supertab'
    use 'airblade/vim-gitgutter'
		use 'preservim/nerdtree'
  end
)
