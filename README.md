# Modesty

A clean and modest zsh theme with support for condaenv, virtualenv and git neatly right aligned while the folder you are in is displayed

![Screencast](screencast.gif)

## Plugin Dependencies

1. git
1. virtualenv
1. [condaenv](https://github.com/saravanabalagi/zsh-plugin-condaenv)

## Installation

1. Update `plugins` in `~/.zshrc`

	```
	plugins=(
	  ...
	  git
	  virtualenv
	  condaenv
	)
	```

	Note that for [condaenv](https://github.com/saravanabalagi/zsh-plugin-condaenv), you also need to download it.

	```
	git clone https://github.com/saravanabalagi/zsh-plugin-condaenv $ZSH_CUSTOM/plugins/condaenv
	```

1. Download modesty

	```
	git clone https://github.com/saravanabalagi/zsh-theme-modesty $ZSH_CUSTOM/themes/modesty
	```

1. Update `ZSH_THEME` in `~/.zshrc` file

	```
	ZSH_THEME="modesty/modesty"
	```

Enjoy modesty! Also check out [humbled](https://github.com/saravanabalagi/zsh-theme-humbled) for left aligned prompt theme.

![Screenshot](screenshot.png)

## Licence

Please refer to the [License](LICENSE) file.
