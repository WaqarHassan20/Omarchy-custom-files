# 🎨 Omarchy Custom Files

<div align="center">

![Omarchy OS](https://img.shields.io/badge/Omarchy-OS-blue?style=for-the-badge)
![Waybar](https://img.shields.io/badge/Waybar-Configuration-orange?style=for-the-badge)
![Hyprland](https://img.shields.io/badge/Hyprland-Compatible-green?style=for-the-badge)

**Custom configuration files for Omarchy OS - Making your desktop beautiful! ✨**

</div>

---

## 📖 About

This repository contains custom configuration files for **Omarchy OS**, a beautiful and functional Linux distribution. These configurations are specifically designed to enhance your Waybar experience with custom styling, icons, and functionality.

## 🎯 Features

- 🎨 **Custom Waybar Theme** - Beautiful, modern design with translucent effects
- 🖥️ **Hyprland Workspace Integration** - Seamless workspace management
- 🔧 **Quick Launch Shortcuts** - Easy access to frequently used applications
- 🎭 **Custom Icons & Branding** - Unique Omarchy OS identity
- 🌈 **Glassmorphism Effects** - Modern UI with blur and transparency
- ⚡ **Performance Optimized** - Lightweight and responsive
- 🔔 **System Monitors** - CPU, Battery, Network, and Bluetooth indicators
- 🎵 **Audio Control** - PulseAudio integration with volume control

## 📁 Repository Structure

```
omarchy/
├── ReadMe.md           # You are here! 📍
└── waybar/
    ├── config.jsonc    # Waybar configuration with custom modules
    └── style.css       # Beautiful styling with glassmorphism effects
```

## 🚀 Installation

### Prerequisites

Before installing, make sure you have:
- ✅ Omarchy OS (or any Hyprland-based system)
- ✅ Waybar installed
- ✅ JetBrainsMono Nerd Font
- ✅ Required applications (nautilus, google-chrome-stable, kitty, code)

### Quick Install

```bash
# Clone the repository
git clone https://github.com/WaqarHassan20/Omarchy-custom-files.git

# Navigate to the repository
cd Omarchy-custom-files

# Backup your existing waybar config (if any)
cp -r ~/.config/waybar ~/.config/waybar.backup

# Copy the waybar configuration
cp -r waybar ~/.config/

# Restart waybar
pkill waybar && waybar &
```

## 🎨 Customization

### Waybar Modules

The configuration includes these awesome modules:

#### Left Side 👈
- **Omarchy Logo** - Custom brand icon with menu integration
- **Workspace Indicators** - Hyprland workspace switcher (1-5)

#### Center 🎯
- **Omarchy OS Text** - Branding text
- **Clock** - Time display
- **Username** - Current user display (Waqar-UL-Hassan)
- **Update Indicator** - System update notifications
- **Screen Recording Indicator** - Active recording status

#### Right Side 👉
- **Quick Launch Apps**:
  - 📁 Files (Nautilus)
  - 🌐 Chrome
  - 💻 VS Code
  - 🖥️ Kitty Terminal
- **System Monitors**:
  - 📶 Bluetooth
  - 🌐 Network
  - 🔊 Audio (PulseAudio)
  - 💻 CPU
  - 🔋 Battery

### Color Scheme

The theme uses a modern dark color scheme with:
- 🎨 Semi-transparent background: `rgba(20, 20, 25, 0.35)`
- ✨ Subtle borders with glow effects
- 🌟 Hover states for interactive elements
- ⚠️ Color-coded warnings (battery, system alerts)

### Changing Colors

Edit `waybar/style.css` to customize colors:

```css
window#waybar {
  background: rgba(20, 20, 25, 0.35);  /* Change background */
  border: 1px solid rgba(255, 255, 255, 0.08);  /* Change border */
}
```

### Modifying Modules

Edit `waybar/config.jsonc` to add/remove modules:

```jsonc
"modules-left": ["custom/omarchy", "hyprland/workspaces"],
"modules-center": ["clock"],  /* Simplify center modules */
"modules-right": ["battery", "pulseaudio"]  /* Keep only essentials */
```

## 🔧 Configuration Details

### Custom Scripts

The configuration uses these custom Omarchy scripts:
- `omarchy-menu` - Opens the main menu
- `omarchy-launch-terminal` - Launches terminal
- `omarchy-update-available` - Checks for updates
- `omarchy-update` - Runs system update

### Keyboard Shortcuts

- **Super + Alt + Space** - Open Omarchy menu
- **Click Omarchy Logo** - Open menu
- **Right-click Omarchy Logo** - Launch terminal

## 🐛 Troubleshooting

### Waybar not starting?
```bash
# Check waybar logs
journalctl --user -u waybar

# Or run waybar in foreground to see errors
waybar
```

### Icons not showing?
Make sure you have Nerd Fonts installed:
```bash
# Install JetBrainsMono Nerd Font
yay -S ttf-jetbrains-mono-nerd  # Arch-based
```

### Custom scripts not working?
Ensure Omarchy-specific scripts are installed and in your PATH.

## 🤝 Contributing

Contributions are **always welcome**! 🎉

### How to Contribute

1. 🍴 **Fork** the repository
2. 🔨 **Create** your feature branch
   ```bash
   git checkout -b feature/AmazingFeature
   ```
3. 💾 **Commit** your changes
   ```bash
   git commit -m '✨ Add some AmazingFeature'
   ```
4. 📤 **Push** to the branch
   ```bash
   git push origin feature/AmazingFeature
   ```
5. 🎁 **Open** a Pull Request

### Pull Request Guidelines

- 📝 Describe your changes in detail
- 🎨 Follow the existing code style
- ✅ Test your changes thoroughly
- 📸 Include screenshots for visual changes
- 🔗 Reference any related issues

### Reporting Issues

Found a bug? 🐛 Have a suggestion? 💡

[Open an issue](https://github.com/WaqarHassan20/Omarchy-custom-files/issues) and let me know!

## 📜 License

This project is open source and available under the [MIT License](LICENSE).

## 👨‍💻 Creator

<div align="center">

### **Waqar-UL-Hassan** 

[![GitHub](https://img.shields.io/badge/GitHub-WaqarHassan20-181717?style=for-the-badge&logo=github)](https://github.com/WaqarHassan20)
[![Repository](https://img.shields.io/badge/Repository-Omarchy--custom--files-blue?style=for-the-badge&logo=git)](https://github.com/WaqarHassan20/Omarchy-custom-files)

**Making Linux beautiful, one config at a time** 💻✨

</div>

---

## 🙏 Acknowledgments

- 🌟 **Omarchy OS Team** - For creating an amazing Linux distribution
- 🎨 **Waybar** - For the excellent status bar
- 💙 **Hyprland** - For the smooth window management experience
- 🎯 **Open Source Community** - For inspiration and support

---

## 📊 Repository Stats

![GitHub Stars](https://img.shields.io/github/stars/WaqarHassan20/Omarchy-custom-files?style=social)
![GitHub Forks](https://img.shields.io/github/forks/WaqarHassan20/Omarchy-custom-files?style=social)
![GitHub Issues](https://img.shields.io/github/issues/WaqarHassan20/Omarchy-custom-files)
![GitHub Pull Requests](https://img.shields.io/github/issues-pr/WaqarHassan20/Omarchy-custom-files)

---

<div align="center">

### ⭐ Star this repository if you find it helpful!

**Made with ❤️ by [Waqar-UL-Hassan](https://github.com/WaqarHassan20)**

</div>
