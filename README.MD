Neovim configuration

- safemode.lua loads mappings and opts file only. Can be used with -u as a
  fallback in case plugins are erroring out on neovim launch and files need to
  be edited without hassle in order to correct/debug.

- File directory structure:
  
   /
   init.lua -> Require the user or namespace.

   /lua/
   /lua/local/ -> Used for local plugins and non-internet-sourceables.

   /lua/$usernamespace/
        init.lua -> Basic system-related setup and requires for remaining config.
        lazy.lua -> Lazyvim bootstrapper.
        plugins.lua -> A table of all the desired plugins to install.
        mappings.lua -> User-defined key-mappings that do not rely on plugins.
        vimopts.lua -> User-defined vim options that do not rely on plugins.

   /lua/$usernamespace/plugins/ -> Plugin-specific config files.
