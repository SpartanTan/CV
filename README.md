# CV

Latex-based CV in Chinese and English

## Get ready

Installation [reference](https://fenglielie.top/p/bafaab0e/)

Let's say you'll do it in WSL2: 

```
sudo apt install texlive-full
# install fonts
sudo apt install fontconfig
```

Create a new file `/etc/fonts/local.conf`

```conf
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
    <dir>/mnt/c/Windows/Fonts</dir>
</fontconfig>
```

Refresh fonts

```
sudo fc-cache -fv
```

Add `settings.json`
```json
{
    "latex-workshop.latex.tools": [
        {
            "name": "xelatex",
            "command": "xelatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOC%"
            ]
        }
    ],
    "latex-workshop.latex.recipes": [
        {
            "name": "xelatex",
            "tools": [
                "xelatex"
            ]
        }
    ],
    "latex-workshop.latex.autoClean.run": "onBuilt", //自动清理不需要的文件
}
```

Don't forget to install VS Code extension `LaTex Workshop`. 