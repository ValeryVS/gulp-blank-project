var publicDirectory = "./public";
var publicAssets    = publicDirectory + "/assets";
var sourceDirectory = "./app";
// var sourceAssets    = sourceDirectory + "/assets";
var tmpDirectory    = "./.tmp";

module.exports = {
  publicDirectory: publicDirectory,
  // sourceAssets: sourceAssets,
  publicAssets: publicAssets,
  tmpDirectory: tmpDirectory,

  jade: {
    src: sourceDirectory + "/**/*.jade",
    dest: publicDirectory
  },

  styles: {
    src: sourceDirectory + "/blocks/**/*.css",
    dest: publicAssets
  },

  coffee: {
    src: sourceDirectory + "/blocks/**/*.coffee",
  },

  scripts: {
    src: sourceDirectory + "/blocks/**/*.js",
    dest: publicAssets
  }
};
