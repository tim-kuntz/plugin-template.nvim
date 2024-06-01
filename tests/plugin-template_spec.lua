-- requires 'nvim-lua/plenary.nvim'
-- TODO how do we specify requirements for the plugin?

describe("plugin-template", function()
  it("can be required", function()
    require('plugin-template')
  end)

  it("should say hello", function()
    local plugin = require('plugin-template')
    assert.equals("Hello from plugin-template!!!", plugin._greeting())
  end)
end)
