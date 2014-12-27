exports.config =
  conventions: assets: /^static\/dev/
  paths:
    public: 'out/dev'
    watched: ['styles/', 'static/dev']
  files:
    javascripts: joinTo: 'debug.js': 'this only exists for auto-reload-brunch'
    stylesheets: joinTo: 'main.css'
  plugins: autoReload: enabled:
    assets: true
    js: true
    css: true

  overrides: production:
    conventions:
      assets: /^static\/prod/
    plugins: autoreload: enabled: false
    optimize: true
    paths:
      public: 'out/prod'
      watched: ['styles/', 'static/prod']
