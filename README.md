<div align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="icons/z.png">
    <img src="icons/z.png" alt="raycast-z" width="84">
  </picture>
  <h1>raycast-z</h1>
  <p>Seamless integration between <a href="https://raycast.com" target="_blank" rel="noopener">Raycast</a> and <a href="https://github.com/ajeetdsouza/zoxide" target="_blank" rel="noopener">zoxide</a>, providing quick directory navigation through script commands. Uses and contributes to your existing zoxide database.</p>
  <br />
  <figure>
    <img src="https://github.com/user-attachments/assets/bc6a2b88-4a56-454c-bb21-1f37645642e2" alt="Demo" />
  </figure>
  <br />
</div>

## Requirements

- [Raycast](https://raycast.com) installed on your system
- [zoxide](https://github.com/ajeetdsouza/zoxide) installed and setup in your shell

## Installation

1. Clone this repository
2. Add the `commands` directory as a Script Directory in Raycast ([installation guide](https://github.com/raycast/script-commands?tab=readme-ov-file#install-script-commands-from-this-repository))
3. If you're using an IDE other than VS Code, set your editor in `commands/edit.sh`, due to how Raycast runs scripts, `$EDITOR` may not be available, so it is set manually. Defaults to `code` for VS Code.
4. Launch Raycast and try it out!

## Usage

The raycast-z commands leverage your existing `zoxide` database (_automatically built as you navigate in your shell_) to quickly access directories.

Simply enter a directory name or pattern, and z will find the best match.

> You can also use absolute paths directly, even if they're not in your `zoxide` database.

## Creating Custom Actions

1. Create a new script command `{action}.sh` in the `commands` directory, using `open.sh` as your template
2. Update the command call from `_z "$1" open .` to your desired action: `_z "$1" {your_command}`
   > The `_z` function (defined in `lib/_z.sh`) handles the zoxide query and command execution in the target directory
3. Configure the `@raycast.*` metadata to your needs
   > Need a custom icon? Use our [ray.so template](https://ray.so/ZJ1T7XP)
4. Test your new command in Raycast
