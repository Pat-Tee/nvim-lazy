# **Neovim configuration**

- safemode.lua loads mappings and opts file only. Can be used with -u,
  ( neovim -u safemode.lua ) as a fallback in case plugins are erroring out on 
  neovim launch and files need to be edited without hassle in order to correct/debug.

- File directory structure:
  
/lua/                   -> This directory.
- init.lua              -> Require the user or namespace here, it's the entrypoint.

/lua/local/             -> Used for local configs and non-internet-sourced plugins.
/lua/local/lsp/         -> Language Server Protocol directory.
/lua/local/lsp/servers/ -> LSP server config on a per-server file basis.

/lua/$usernamespace/    -> User-defined lua files.
-     init.lua          -> Basic system-related setup and requires for remaining config.
-     lazy.lua          -> Lazyvim bootstrapper.
-     plugins.lua       -> A table of all the desired plugins to install.
-     mappings.lua      -> User-defined key-mappings that do not rely on plugins.
-     vimopts.lua       -> User-defined vim options that do not rely on plugins.

/lua/$usernamespace/plugins/ -> Plugin-specific config files.
