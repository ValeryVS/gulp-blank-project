publicDirectory = './public'
publicAssets = publicDirectory + '/assets'
sourceDirectory = './app'
sourceAssets = sourceDirectory + '/assets'
sourceAssetsGenerated = sourceAssets + '/generated'
tmpDirectory = './.tmp'

module.exports =
  publicDirectory: publicDirectory
  sourceAssets: sourceAssets
  sourceAssetsGenerated: sourceAssetsGenerated
  publicAssets: publicAssets
  tmpDirectory: tmpDirectory

  browserSync:
    server:
      baseDir: publicDirectory
    files: ['pubilc/**/*.html']

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
    settings:
      indentedSyntax: true # Enable .sass syntax!
      imagePath: 'assets/images' # Used by the image-url helper

  importCss:
    src: sourceAssets + '/import.css'
    dest: sourceAssets + '/generated'
    name: 'import.scss'
    settings:
      extensions: ["css"]

  watch:
    sass:
      src: sourceDirectory + '/**/*.{sass,scss}'
    css:
      src: sourceDirectory + '/**/*.css'
    coffee:
      src: sourceDirectory + '/**/*.coffee'
    scripts:
      src: sourceDirectory + '/**/*.js'
