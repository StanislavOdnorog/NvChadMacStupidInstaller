# NvChad MacOS simple installer bash script
---
### The script that consistently installs all dependencies for [NvChad](https://nvchad.com) neovim config
### And then installs NvChad itself...
---
For personal use, but if you need it you are free to use it as you want.  
I will be happy if someone add something since it's my first commit on GitHub :3 
---

```mermaid
graph TD;
    A[Installation Process] -- T[Git Installation];
    T --> B[Homebrew Installation];
    B --> C[GCC Installation];
    C --> D[NVim Configs Cleanup];
    D --> E[Nvim Installation];
    E --> F[Make Installation];
    F --> G[NPM Installtion];
    G --> H[Node Installation];
    H --> I[Rust (+cargo) Installation];
    I --> J[JetbrainsMono Nerd Font Installation];
    J --> K[Iterm Installation];
    K --> L[NVchad Installation];
    L --> M[NvChad Launch];
    M --> N[Other Dependencies Auto Installation];
```


