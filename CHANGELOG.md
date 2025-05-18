# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.3.11] - 2025-01-09

### Added

- New command-line arguments for controlling file visibility:
  - `--all`: Show all files including hidden files and special entries (. and ..)
  - `--almost-all`: Show hidden files but exclude special directory entries (. and ..)

### Changed

- Upgraded actions/upload-artifact to v4 in CI and release workflows
- Improved directory sorting logic across all sorters (alphabetical, date, size)
- Enhanced natural sorting algorithm for more accurate numeric segment comparisons
- Updated last_git_commit plugin to use JSON for parsing commit information

### Fixed

- Fixed issue with SizeMap formatter panicking in certain scenarios
- Improved symlink handling to gracefully manage invalid symlinks
- Enhanced symlink target information display and metadata collection
- Fixed commit info retrieval in the git plugin for edge cases

## [0.3.10] - 2025-01-06

### Added

- Enhanced symlink support:

  - New symlink metadata retrieval and display
  - Improved symlink target information in output
  - Better visual representation of symlinks

- New permission format options:

  - `--permission-format` argument with multiple display formats:
    - symbolic (default)
    - octal
    - binary
    - verbose
    - compact
  - Configurable default permission format in settings in configuration file

- Enhanced grid format configuration:
  - New `--grid-ignore` option
  - Configurable grid width settings in configuration file

### Changed

- Improved plugin configuration with enhanced tilde expansion for plugin directories

- Refined symlink target display positioning in LongFormatter output
- Enhanced documentation and README formatting
- Added completions archive to release workflow

### Fixed

- Fixed symlink handling to respect 'no_symlinks' argument

## [0.3.9] - 2025-01-04

### Added

- New file management plugins:

  - `file_copier`: Clipboard-based file copying functionality
  - `file_mover`: Clipboard-based file moving operations
  - `file_remover`: Interactive file and directory removal
  - `file_organizer`: File organization with multiple strategies (extension, date, type, size)

- Enhanced theme system:

  - New `LlaDialoguerTheme` for consistent UI styling
  - Additional customization options for symbols and padding
  - New theme management commands: `theme pull` and `theme install`
  - Improved theme integration across all plugins

- Improved search capabilities:
  - Enhanced fuzzy matching functionality
  - Optimized `SearchIndex` for better search operations

### Documentation

- A new documentation website is available at [lla.chaqchase.com](https://lla.chaqchase.com)

### Changed

- Standardized capitalization of 'lla' across documentation
- Enhanced release workflow with package generation
- Improved plugin documentation and installation instructions
- Integrated `lla_plugin_utils` across plugins for better consistency

### Fixed

- Coloring issue for icons in the tree format

## [0.3.8] - 2024-12-21

### Added

- New utility library `lla_plugin_utils` for building plugins:

  - UI components (BoxComponent, HelpFormatter, KeyValue, etc.)
  - Plugin infrastructure utilities
  - Code highlighting and syntax support
  - Configuration management tools

- New command-line arguments for file type filtering:

  - `--dirs-only`: Show only directories
  - `--files-only`: Show only regular files
  - `--symlinks-only`: Show only symbolic links
  - `--dotfiles-only`: Show only dot files and directories
  - `--no-dirs`: Hide directories
  - `--no-files`: Hide regular files
  - `--no-symlinks`: Hide symbolic links
  - `--no-dotfiles`: Hide dot files and directories

- Enhanced plugin functionality:
  - All official plugins updated with new UI components and improved functionality
  - Users can update their plugins using `lla update` command
  - Individual plugin updates supported via `lla update <plugin_name>`

### Changed

- Updated configuration with new `no_dotfiles` setting to hide dot files by default
- Enhanced documentation with detailed examples of file type filtering
- Updated `terminal_size` dependency to version 0.4.1

### Fixed

- Fix the issue with the default listing format from config overrides the args

## [0.3.7] - 2024-12-20

### Changed

- Faster recursive directory listing with optimized traversal
- Improved fuzzy search performance and accuracy
- Enhanced tree format with more efficient rendering
- Redesigned size calculation logic for faster and more accurate results
- General stability improvements and bug fixes

## [0.3.6] - 2024-12-18

### Added

- Interactive fuzzy file search (Experimental - Might be unstable)

  - Enabled via the new `--fuzzy` flag
  - Designed for quick file lookups in standard-sized directories
  - Future updates will optimize performance for large-scale directory structures

- Directory size integration

  - New option to include directory sizes in all listing formats
  - Compatible with default, sizemap, grid, and tree visualizations
  - Recursive directory size calculation with `calculate_dir_size`
  - Configurable through the `include_dirs` setting in configuration files
  - Enhanced size bar visualization for both directories and files

- Enhanced shell integration

  - Added comprehensive shell completion support for bash, zsh, fish, and elvish
  - Generate completions using `lla completion <shell> [path]`

- Customizable fuzzy search configuration

  - New `listers.fuzzy.ignore_patterns` setting
  - Supports multiple pattern types:
    - Simple substring matching
    - Glob patterns
    - Regular expressions

- Interactive theme management

  - New `lla theme` command for interactive theme switching

- Advanced directory visualization

  - New `--recursive` flag for hierarchical directory display
  - Implemented `RecursiveFormatter` for structured output
  - Flexible tree and recursive format options

### Changed

- Architecture improvements

  - Redesigned `Args` struct to accommodate shell completion, fuzzy format, and directory size features
  - Enhanced command handler for improved shell integration
  - Optimized file listing and formatting logic

- Dependency updates

  - Added `clap_complete` for shell completion functionality
  - Updated `hermit-abi` version specifications
  - Integrated `num_cpus` for improved performance

- Search functionality enhancements

  - Implemented configurable `FuzzyConfig` structure
  - Enhanced `FuzzyLister` and `SearchIndex` components
  - Improved pattern matching and file filtering capabilities

- Core system refinements
  - Optimized `create_lister` function
  - Enhanced configuration loading for fuzzy search and directory size inclusion
  - Improved recursive listing implementation
  - Updated `SizeMapFormatter` for better directory and file size visualization

## [0.3.5] - 2024-12-16

### Added

- A theming system to customize the look of `lla`
- New configuration option `theme`
- An extensive theming preset library
- Add the `--no-color` flag to disable color output, and works will all listing formats
- New package managers support
- Include window builds in the releases

### Fixed

- Minor fixes and improvements
- Stability improvements

## [0.3.4] - 2024-12-14

### Added

- The ability to set plugins path with `config --set`

## [0.3.3] - 2024-12-14

### Added

- New configuration options like `sort`, `filter`, `icons`

### Changed

- Better error handling
- Better and much cleaner plugins installation process
- Revised config settings
- Refactor the main entry point
- Enhanced plugin update mechanism

### Fixed

- Fixed the layout and style of the plugin installation process
- Fixed plugins loading

## [0.3.2] - 2024-12-14

### Added

- New configuration options like `sort`, `filter`, `icons`

### Changed

- Better error handling
- Better and much cleaner plugins installation process
- Revised config settings
- Refactor the main entry point
- Enhanced plugin update mechanism

### Fixed

- Fixed the layout and style of the plugin installation process

## [0.3.1] - 2024-12-12

### Added

- Plugin system redesign:
  - Protocol Buffers message passing architecture
  - C API compatibility
  - ABI version verification
  - Improved documentation
  - Enhanced plugin management interface
  - Plugin cleanup command (`lla clean`)
  - Improved plugin discovery and loading
  - Plugin update functionality improved
  - Improved the functionality and look of all plugins
- Command shortcuts system:
  - Store and manage plugin commands as shortcuts
  - CLI commands for shortcut management (`lla shortcut add/remove/list`)
  - Configuration file storage with descriptions
  - Support for custom arguments
  - Simplified command syntax
- Sorting improvements:
  - Reverse sorting (`-r`, `--sort-reverse`)
  - Directory-first option (`--sort-dirs-first`)
  - Case-sensitive sorting (`--sort-case-sensitive`)
  - Natural number sorting (`--sort-natural`)
- Filter system updates:
  - Multiple pattern support with comma separation
  - AND operations using `+` prefix
  - Logical operations (AND, OR, NOT, XOR)
  - Glob pattern matching
  - Case sensitivity options
- Additional features:
  - Icon support across formats
  - Updated `sizemap`, `timeline` and `git` views
  - Selective plugin installation
  - Command shortcut system

### Changed

- Performance optimizations for sorting
- Improved filter matching
- Plugin system reliability updates
- Refined sizemap visualization
- Updated plugin interfaces
- Interface improvements
- General stability enhancements

### Fixed

- Pregenerate protobuf bindings
- Plugin ABI compatibility
- Case-sensitive search behavior
- Directory sorting issues
- Numeric filename sorting

## [0.3.0] - 2024-12-11

### Added

- Plugin system redesign:
  - Protocol Buffers message passing architecture
  - C API compatibility
  - ABI version verification
  - Improved documentation
  - Enhanced plugin management interface
  - Plugin cleanup command (`lla clean`)
  - Improved plugin discovery and loading
  - Plugin update functionality improved
  - Improved the functionality and look of all plugins
- Command shortcuts system:
  - Store and manage plugin commands as shortcuts
  - CLI commands for shortcut management (`lla shortcut add/remove/list`)
  - Configuration file storage with descriptions
  - Support for custom arguments
  - Simplified command syntax
- Sorting improvements:
  - Reverse sorting (`-r`, `--sort-reverse`)
  - Directory-first option (`--sort-dirs-first`)
  - Case-sensitive sorting (`--sort-case-sensitive`)
  - Natural number sorting (`--sort-natural`)
- Filter system updates:
  - Multiple pattern support with comma separation
  - AND operations using `+` prefix
  - Logical operations (AND, OR, NOT, XOR)
  - Glob pattern matching
  - Case sensitivity options
- Additional features:
  - Icon support across formats
  - Updated `sizemap`, `timeline` and `git` views
  - Selective plugin installation
  - Command shortcut system

### Changed

- Performance optimizations for sorting
- Improved filter matching
- Plugin system reliability updates
- Refined sizemap visualization
- Updated plugin interfaces
- Interface improvements
- General stability enhancements

### Fixed

- Plugin ABI compatibility
- Case-sensitive search behavior
- Directory sorting issues
- Numeric filename sorting

## [0.2.10] - 2024-11-30

### Added

- New display formats for enhanced visualization:
  - `git`: Display Git status information for files
  - `grid`: Present files in an organized grid layout
  - `sizemap`: Visualize file sizes with proportional representation
  - `table`: Show files in a structured table format
  - `timeline`: Group files by creation/modification dates
- Interactive plugin management system
- Plugin update functionality via CLI
- Extended configuration options for customization
- Plugin support for default and long format customization

### Changed

- Significant performance improvements:
  - Optimized tree view rendering
  - More efficient recursive file listing
  - Better memory management for large directories
- Plugin system improvements:
  - Refined plugin interface for better integration
  - More robust plugin installation process
  - Enhanced plugin discovery and loading
- Sorting functionality:
  - More accurate file sorting across all formats
  - Improved performance for large directory sorting

### Fixed

- Memory leaks in recursive directory listing
- Plugin installation reliability issues
- Color output consistency across different formats

## [0.2.9] - 2024-11-27

### Changed

- Plugin interface versioning

### Fixed

- Plugin interface versioning
- GitHub Actions workflows

## [0.2.8] - 2024-01-09

### Added

- Multi-architecture support for all major platforms
- Cargo workspace setup for better dependency management
- GitHub Actions workflows for automated releases
- SHA256 checksums for all binary artifacts

### Changed

- Migrated to Cargo workspace structure
- Updated build system to use workspace inheritance
- Improved cross-compilation support

### Fixed

- Build consistency across different platforms
- Plugin interface versioning
