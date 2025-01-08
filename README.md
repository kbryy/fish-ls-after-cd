# ls-after-cd
A Fish plugin to automatically run your customized directory commands every time you change directories (`cd`).  
You can configure commands like `ls`, `fd`, `eza`, or any other you prefer.

## Installation

Install with [Fisher](https://github.com/jorgebucaran/fisher):

```fish
fisher install kbryy/ls-after-cd.fish
```

## How to Use

- **Automatic Listing**:  
  By default, `ls -GF` runs every time you change directories (`cd`).

- **Custom Commands**:  
  Customize the command by setting the `LS_AFTER_CD_COMMAND` variable:  
  ```fish
  set -gx LS_AFTER_CD_COMMAND "eza --icons -a"
  ```

  **Examples of commands you can use**:
  - `ls -lh`
  - `fd --max-depth 1 --color always`

- **Temporarily Disable**:  
  Turn off the plugin:
  ```fish
  set -gx LS_AFTER_CD false
  ```

## Uninstallation

Remove the plugin using Fisher:
```fish
fisher uninstall kbryy/ls-after-cd.fish
```
