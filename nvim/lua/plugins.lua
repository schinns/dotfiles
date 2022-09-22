return require('packer').startup(
  function()
    use 'wbthomason/packer.nvim'

    -- Languages
    use 'neovim/nvim-lspconfig'
    use 'vim-ruby/vim-ruby'
    -- use 'thoughtbot/vim-rspec'
    use 'pangloss/vim-javascript'
    use 'rodjek/vim-puppet'
    -- use 'elixir-editors/vim-elixir'
    -- use 'rescript-lang/vim-rescript'
    use 'reasonml-editor/vim-reason-plus'

    -- use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}

    -- Utilities
    use 'christoomey/vim-tmux-navigator'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'ervandew/supertab'
    use 'airblade/vim-gitgutter'
    use 'preservim/nerdtree'
    use 'tpope/vim-fugitive'
		use 'TravonteD/luajob'
  end
)
