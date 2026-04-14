🚀 My Personal Vim Config

A lightweight, zero-bloat Vim configuration featuring custom mass-replacement tools and modern IDE-like autocomplete.
🛠 Installation

To apply these configurations to your local machine, clone the repository and run the following commands to link the files to your home directory:
Bash

# Remove existing config if it exists
rm -rf ~/.vimrc ~/.vim

# Create symbolic links (Replace ~/dotfiles with your actual path)
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim

✨ Features
🔍 Smart Mass Replace

This config includes a custom :ReplaceAll command that handles project-wide or file-specific refactoring without the clutter of the Quickfix window.

    Trigger: Map to \r or type :ReplaceAll.

    Force Mode: Add ! to bypass confirmation prompts.

    Scope: Defaults to the current file. Pass a pattern (e.g., *.c or **/*) to expand the search.

Examples:
Vim Script

:ReplaceAll oldWord newWord          " Replace in current file (asks for confirm)
:ReplaceAll! oldWord newWord         " Replace in current file (instant)
:ReplaceAll! oldWord newWord *.c     " Replace in all .c files in current dir
:ReplaceAll! oldWord newWord **/* " Replace in entire project recursively

⌨️ Autocomplete

Modernize your typing experience with built-in keyword completion.

    Trigger: Ctrl + Space

    Navigation: Use Up and Down arrow keys to cycle through the menu.

    Selection: Press Enter to confirm your choice without inserting a newline.

📝 Configuration Highlights

    No Plugins: Fast performance using native VimScript.

    Smart Indent: Set up for C-style indentation (4 spaces/tabs).

    Portable: Easily syncable across different machines via this repository.
