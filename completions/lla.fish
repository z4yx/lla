complete -c lla -n "__fish_use_subcommand" -s d -l depth -d 'Set the depth for tree listing (default from config)' -r
complete -c lla -n "__fish_use_subcommand" -s s -l sort -d 'Sort files by name, size, or date' -r -f -a "{name	,size	,date	}"
complete -c lla -n "__fish_use_subcommand" -s f -l filter -d 'Filter files by name or extension' -r
complete -c lla -n "__fish_use_subcommand" -l enable-plugin -d 'Enable specific plugins' -r
complete -c lla -n "__fish_use_subcommand" -l disable-plugin -d 'Disable specific plugins' -r
complete -c lla -n "__fish_use_subcommand" -l plugins-dir -d 'Specify the plugins directory' -r
complete -c lla -n "__fish_use_subcommand" -l permission-format -d 'Format for displaying permissions (symbolic, octal, binary, verbose, compact)' -r -f -a "{symbolic	,octal	,binary	,verbose	,compact	}"
complete -c lla -n "__fish_use_subcommand" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_use_subcommand" -s V -l version -d 'Print version information'
complete -c lla -n "__fish_use_subcommand" -s l -l long -d 'Use long listing format (overrides config format)'
complete -c lla -n "__fish_use_subcommand" -s t -l tree -d 'Use tree listing format (overrides config format)'
complete -c lla -n "__fish_use_subcommand" -s T -l table -d 'Use table listing format (overrides config format)'
complete -c lla -n "__fish_use_subcommand" -s g -l grid -d 'Use grid listing format (overrides config format)'
complete -c lla -n "__fish_use_subcommand" -l grid-ignore -d 'Use grid view ignoring terminal width (Warning: output may extend beyond screen width)'
complete -c lla -n "__fish_use_subcommand" -s S -l sizemap -d 'Show visual representation of file sizes (overrides config format)'
complete -c lla -n "__fish_use_subcommand" -l timeline -d 'Group files by time periods (overrides config format)'
complete -c lla -n "__fish_use_subcommand" -s G -l git -d 'Show git status and information (overrides config format)'
complete -c lla -n "__fish_use_subcommand" -s F -l fuzzy -d 'Use interactive fuzzy finder'
complete -c lla -n "__fish_use_subcommand" -l icons -d 'Show icons for files and directories (overrides config setting)'
complete -c lla -n "__fish_use_subcommand" -l no-icons -d 'Hide icons for files and directories (overrides config setting)'
complete -c lla -n "__fish_use_subcommand" -l no-color -d 'Disable all colors in the output'
complete -c lla -n "__fish_use_subcommand" -s r -l sort-reverse -d 'Reverse the sort order'
complete -c lla -n "__fish_use_subcommand" -l sort-dirs-first -d 'List directories before files (overrides config setting)'
complete -c lla -n "__fish_use_subcommand" -l sort-case-sensitive -d 'Enable case-sensitive sorting (overrides config setting)'
complete -c lla -n "__fish_use_subcommand" -l sort-natural -d 'Use natural sorting for numbers (overrides config setting)'
complete -c lla -n "__fish_use_subcommand" -s c -l case-sensitive -d 'Enable case-sensitive filtering (overrides config setting)'
complete -c lla -n "__fish_use_subcommand" -s R -l recursive -d 'Use recursive listing format'
complete -c lla -n "__fish_use_subcommand" -l include-dirs -d 'Include directory sizes in the metadata'
complete -c lla -n "__fish_use_subcommand" -l dirs-only -d 'Show only directories'
complete -c lla -n "__fish_use_subcommand" -l files-only -d 'Show only regular files'
complete -c lla -n "__fish_use_subcommand" -l symlinks-only -d 'Show only symbolic links'
complete -c lla -n "__fish_use_subcommand" -l no-dirs -d 'Hide directories'
complete -c lla -n "__fish_use_subcommand" -l no-files -d 'Hide regular files'
complete -c lla -n "__fish_use_subcommand" -l no-symlinks -d 'Hide symbolic links'
complete -c lla -n "__fish_use_subcommand" -l no-dotfiles -d 'Hide files starting with a dot (overrides config setting)'
complete -c lla -n "__fish_use_subcommand" -s a -l all -d 'Show all files including dotfiles (overrides no_dotfiles config)'
complete -c lla -n "__fish_use_subcommand" -s A -l almost-all -d 'Show all files including dotfiles except . and .. (overrides no_dotfiles config)'
complete -c lla -n "__fish_use_subcommand" -l dotfiles-only -d 'Show only dot files and directories (those starting with a dot)'
complete -c lla -n "__fish_use_subcommand" -f -a "install" -d 'Install a plugin'
complete -c lla -n "__fish_use_subcommand" -f -a "plugin" -d 'Run a plugin action'
complete -c lla -n "__fish_use_subcommand" -f -a "list-plugins" -d 'List all available plugins'
complete -c lla -n "__fish_use_subcommand" -f -a "use" -d 'Interactive plugin manager'
complete -c lla -n "__fish_use_subcommand" -f -a "init" -d 'Initialize the configuration file'
complete -c lla -n "__fish_use_subcommand" -f -a "config" -d 'View or modify configuration'
complete -c lla -n "__fish_use_subcommand" -f -a "update" -d 'Update installed plugins'
complete -c lla -n "__fish_use_subcommand" -f -a "clean" -d 'This command will clean up invalid plugins'
complete -c lla -n "__fish_use_subcommand" -f -a "shortcut" -d 'Manage command shortcuts'
complete -c lla -n "__fish_use_subcommand" -f -a "completion" -d 'Generate shell completion scripts'
complete -c lla -n "__fish_use_subcommand" -f -a "theme" -d 'Interactive theme manager'
complete -c lla -n "__fish_use_subcommand" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c lla -n "__fish_seen_subcommand_from install" -l git -d 'Install a plugin from a GitHub repository URL' -r
complete -c lla -n "__fish_seen_subcommand_from install" -l dir -d 'Install a plugin from a local directory' -r
complete -c lla -n "__fish_seen_subcommand_from install" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_seen_subcommand_from plugin" -s n -l name -d 'Name of the plugin' -r
complete -c lla -n "__fish_seen_subcommand_from plugin" -s a -l action -d 'Action to perform' -r
complete -c lla -n "__fish_seen_subcommand_from plugin" -s r -l args -d 'Arguments for the plugin action' -r
complete -c lla -n "__fish_seen_subcommand_from plugin" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_seen_subcommand_from list-plugins" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_seen_subcommand_from use" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_seen_subcommand_from init" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_seen_subcommand_from config" -l set -d 'Set a configuration value (e.g., --set plugins_dir /new/path)' -r
complete -c lla -n "__fish_seen_subcommand_from config" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_seen_subcommand_from update" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_seen_subcommand_from clean" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_seen_subcommand_from shortcut; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from remove; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_seen_subcommand_from shortcut; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from remove; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -f -a "add" -d 'Add a new shortcut'
complete -c lla -n "__fish_seen_subcommand_from shortcut; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from remove; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -f -a "remove" -d 'Remove a shortcut'
complete -c lla -n "__fish_seen_subcommand_from shortcut; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from remove; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -f -a "list" -d 'List all shortcuts'
complete -c lla -n "__fish_seen_subcommand_from shortcut; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from remove; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c lla -n "__fish_seen_subcommand_from shortcut; and __fish_seen_subcommand_from add" -s d -l description -d 'Optional description of the shortcut' -r
complete -c lla -n "__fish_seen_subcommand_from shortcut; and __fish_seen_subcommand_from add" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_seen_subcommand_from shortcut; and __fish_seen_subcommand_from remove" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_seen_subcommand_from shortcut; and __fish_seen_subcommand_from list" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_seen_subcommand_from completion" -s p -l path -d 'Custom installation path for the completion script' -r
complete -c lla -n "__fish_seen_subcommand_from completion" -s o -l output -d 'Output path for the completion script (prints to stdout if not specified)' -r
complete -c lla -n "__fish_seen_subcommand_from completion" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_seen_subcommand_from theme; and not __fish_seen_subcommand_from pull; and not __fish_seen_subcommand_from install; and not __fish_seen_subcommand_from help" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_seen_subcommand_from theme; and not __fish_seen_subcommand_from pull; and not __fish_seen_subcommand_from install; and not __fish_seen_subcommand_from help" -f -a "pull" -d 'Pull and install themes from the official repository'
complete -c lla -n "__fish_seen_subcommand_from theme; and not __fish_seen_subcommand_from pull; and not __fish_seen_subcommand_from install; and not __fish_seen_subcommand_from help" -f -a "install" -d 'Install theme(s) from a file or directory'
complete -c lla -n "__fish_seen_subcommand_from theme; and not __fish_seen_subcommand_from pull; and not __fish_seen_subcommand_from install; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c lla -n "__fish_seen_subcommand_from theme; and __fish_seen_subcommand_from pull" -s h -l help -d 'Print help information'
complete -c lla -n "__fish_seen_subcommand_from theme; and __fish_seen_subcommand_from install" -s h -l help -d 'Print help information'
