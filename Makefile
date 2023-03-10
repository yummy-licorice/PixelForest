all:
	make dk
	make terminal
	make rofi
	make dunst
	make eww

eww:
	@cd cfg/eww/scripts
	@echo "Compiling Scripts"
	@nimble build -d:release
	@cd ..
	@echo "Moving files to config directory"
	@cp -rf eww ~/.config/
	@cd ..

dk:
	@echo "Moving files to config directory"
	@cp -rf cfg/dk ~/.config/
	@echo "Moving screenshot script to ~/.local/bin"
	@mkdir ~/.local/bin/
	@cp -rf bin/screenshot ~/.local/bin/

terminal:
	@echo "Moving wezterm to config directory"
	@cp -rf cfg/wezterm ~/.config
	@echo "Moving fish to config directory"
	@cp -rf cfg/fish ~/.config
	@echo "Moving shell profile to ~"
	@cp -rf home/.fish_profile ~/
	@echo "Moving starship to config directory"
	@cp -rf cfg/starship.toml ~/.config

rofi:
	@echo "Moving files to config directory"
	@cp -rf cfg/rofi ~/.config

dunst: 
	@echo "Moving files to config directory"
	@cp -rf cfg/dunst ~/.config
