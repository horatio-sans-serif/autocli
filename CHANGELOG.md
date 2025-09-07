# Changelog

## [0.2.0] - 2024-01-07

### Added
- Comprehensive data type support (floats, booleans, lists)
- Intelligent type inference from context
- Support for multiple boolean formats (true/false, yes/no, 1/0)
- Support for list arguments (comma-separated, space-separated, bracket notation)
- Enhanced fallback parser for better reliability
- More flexible CLI format parsing (--arg=val, -a val, arg:val, etc.)
- Examples demonstrating type flexibility
- Tests for various data types

### Fixed
- Short flag conflicts in argparse generation
- Improved handling of edge cases in argument parsing
- Better error recovery when LLM returns invalid JSON

### Changed
- Improved LLM prompt for better argument extraction
- Enhanced fallback parser to handle more CLI formats
- Added type conversion for list arguments

## [0.1.0] - 2024-01-07

### Initial Release
- Basic CLI argument parsing using Flan-T5-small model
- Local LLM processing (no API calls)
- Support for positional and named arguments
- Fallback regex parser
- NamedTuple-like argument access
- Basic examples and tests