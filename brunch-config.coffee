exports.config =
  # See http://brunch.io/#documentation for docs.
  files:
    javascripts:
      joinTo:
        'javascripts/vendor.js': /^vendor/
        'javascripts/app.js': /^app\/js/
      order:
        before: [
          'vendor/jquery-1.11.1.js',
        ]
    stylesheets:
      joinTo:
        'stylesheets/pmv.css': /^app\/less\/pmv.less/
        'stylesheets/ie-lt9.css': /^app\/less\/ie-lt9.less/
  watcher:
    usePolling: true
  modules:
    nameCleaner: (path) ->
      path.replace /^app\/js\//, ''
