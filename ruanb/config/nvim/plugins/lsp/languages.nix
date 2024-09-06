{ pkgs ... }: {
  home.packages = with pkgs [
    json
    javascript
    typescript
    tsx
    yaml
    html
    css
    prisma
    markdown
    markdown_inline
    svelte
    graphql
    bash
    lua
    vim
    dockerfile
    gitignore
    query
    vimdoc
    c
    nix
  ];
}
