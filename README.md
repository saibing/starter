# rvim

```bash
#!/usr/bin/env bash
#
export NVIM_APPNAME="${NVIM_APPNAME:-"rvim"}"
exec -a "$NVIM_APPNAME" nvim -u "$HOME/.config/rvim/init.lua" "$@"
```
