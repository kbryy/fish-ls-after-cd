# ls-after-cd
A simple Fish plugin that automatically lists the contents of a directory (`ls`) whenever you change directories.

## Installation

Install with [Fisher](https://github.com/jorgebucaran/fisher):

```bash
fisher install kbryy/fish-ls-after-cd
```

## Usage

This plugin will automatically display the directory contents when you change directories (`cd`).

### Enable/Disable

To disable the plugin temporarily:
```fish
set -xg LS_AFTER_CD false
```

To enable it again:
```fish
set -xg LS_AFTER_CD true
```
## Uninstallation

To remove the plugin, simply uninstall it with Fisher:
```bash
fisher uninstall kbryy/fish-ls-after-cd
```

<!-- ## License -->
<!---->
<!-- This plugin is licensed under the MIT License. See the `LICENSE` file for details. -->

