# plugin-template.nvim

Template for Neovim plugins covering the following aspects:

- [X] Plugin directory structure
- [X] Plugin testing
- [X] Plugin documentation
- [ ] CI/CD pipeline
- [ ] Generating documentation from README.md

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
return {
  'tim-kuntz/plugin-template.nvim',
}
```

## Plugin Development

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

* Clone the repository to ~/projects/plugin-template.nvim
* Add the following to your lazy.nvim configuration:

```lua
return {
  'tim-kuntz/plugin-template.nvim',
  dev = true,
  enabled = true, -- false to disable plugin
}
```
Note that `dev = true` will look for the plugin in `~/projects/plugin-template.nvim`. Setting
dev to false will use install the plugin from Github.

## Testing

The specs use [plenary.nvim tests](https://github.com/nvim-lua/plenary.nvim/blob/master/TESTS_README.md).

To run the spec in the current buffer:
```vim
:PlenaryBustedFile %
```
To run all of the specs:
```vim
:PlenaryBustedDirectory tests
```
Note: The tests run in a remote nvim instance and display output in a new window in terminal mode.
You may need to C-\ C-n to switch back to NORMAL mode and close the window.

Optionally, you can run the tests from the command line. Here is an ex command that opens a new terminal
in a split window and runs all the tests:
```vim
:split term://nvim --headless -c 'PlenaryBustedDirectory tests'
```


