# Autoconfig load
# config.load_autoconfig(True)  # load autoconfig.yml instead
config.load_autoconfig(False) # load this file, and not autoconfig.yml

# Search engines
c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}',
                       'am': 'https://www.amazon.com/s?k={}',
                       'aw': 'https://wiki.archlinux.org/?search={}',
                       'go': 'https://www.google.com/search?q={}',
                       # 'hoog': 'https://hoogle.haskell.org/?hoogle={}',
                       're': 'https://www.reddit.com/r/{}',
                       'ub': 'https://www.urbandictionary.com/define.php?term={}',
                       'wiki': 'https://en.wikipedia.org/wiki/{}',
                       'yt': 'https://www.youtube.com/results?search_query={}'}

# Setting dark mode
config.set("colors.webpage.darkmode.enabled", True) #always

# Set custom CSS stylesheets
# config.bind(',gr', 'config-cycle content.user_stylesheets ~/.config/solarized-everything-css/css/gruvbox/gruvbox-all-sites.css ""')

# Set Custom keybindings
config.bind(',v', 'spawn mpv {url}')
config.bind(',.', 'spawn --userscript qute-1pass')
