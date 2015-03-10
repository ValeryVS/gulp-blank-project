publicDirectory = './public'
publicAssets = publicDirectory + '/assets'
sourceDirectory = './app'
sourceAssets = sourceDirectory + '/assets'
tmpDirectory = './.tmp'

module.exports =
  publicDirectory: publicDirectory
  sourceAssets: sourceAssets
  publicAssets: publicAssets
  tmpDirectory: tmpDirectory

  browserify:
    entries: sourceAssets + '/app.js'
    dest: publicAssets
    outputName: 'app.js'

  jade:
    src: sourceDirectory + '/**/*.jade'
    dest: publicDirectory

  sass:
    src: sourceAssets + '/app.sass'
    dest: publicAssets
    settings: {}
    #   sourcemapPath: '../' 
    #   errLogToConsole: true
    #   indentedSyntax: true # Enable .sass syntax!
    #   imagePath: 'assets/images' # Used by the image-url helper
    settingsSourcemaps:
      includeContent: false
      sourceRoot: publicAssets

  styles:
    src: sourceDirectory + '/blocks/**/*.css'
    dest: publicAssets

  coffee:
    src: sourceDirectory + '/blocks/**/*.coffee'

  scripts:
    src: sourceDirectory + '/blocks/**/*.js'
    dest: publicAssets
