{
  plugins.wilder = {
    enable = true;
    enableCmdlineEnter = false;
    modes = [
      ":"
      "/"
      "?"
    ];
    nextKey = "<C-n>";
    prevKey = "<C-p>";
    acceptKey = "<C-y>";
    renderer = ''
      wilder.popupmenu_renderer(
        wilder.popupmenu_border_theme({
          highlights = {
            border = 'Normal',
          },
          border = 'rounded',
        })
      )
    '';
  };
}
