return {
  'nvim-neorg/neorg',
  build = ':Neorg sync-parsers',
  ft = 'norg',
  cmd = 'Neorg',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    load = {
      ['core.defaults'] = {},
      ['core.concealer'] = {},
      ['core.integrations.treesitter'] = {},
      ['core.integrations.nvim-cmp'] = {},
      ['core.clipboard'] = {},
      ['core.clipboard.code-blocks'] = {},
      ['core.text-objects'] = {},
      ['core.export'] = {},
      ['core.summary'] = {},
      ['core.journal'] = {
        config = {
          journal_folder = 'journal',
          strategy = 'flat',
          workspace = 'journal',
        },
      },
      ['core.esupports.metagen'] = {
        config = {
          author = 'shovelfather',
          timezone = 'utc',
          type = 'auto',
        },
      },
      ['core.completion'] = {
        config = {
          engine = 'nvim-cmp',
        },
      },
      ['core.dirman'] = {
        config = {
          default_workspace = 'neorg',
          workspaces = {
            neorg = '~/neorg',
            journal = '~/neorg/journal/',
          },
        },
      },
    },
  },
}
