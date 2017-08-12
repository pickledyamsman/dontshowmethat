var htmlDir          = './app/views';
var assetDir         = './gulp/assets';
var outputDir        = './lib/assets';
var nodeDir          = './node_modules';
var scriptBundleName = '/bundle.js';

module.exports = {
  sass: {
    //src: assetDir + '/stylesheets/style.scss',
    src: assetDir + '/stylesheets/*',
    watch: assetDir + '/stylesheets/**/*',
    dest: outputDir + '/stylesheets',
    includes: [
      "./node_modules/bootstrap-sass/assets/stylesheets",
    ]
  },

  html: {
    watch: htmlDir + '/**/*',
  },

  env: {
    test: {
      NODE_ENV: 'test',
      HOSTNAME: 'localhost',
      PORT: '3000',
      PROTOCOL: 'http',
      DEBUG: false
    },

    development: {
      NODE_ENV: 'development',
      HOSTNAME: 'localhost',
      PORT: '3001',
      PROTOCOL: 'http',
      DEBUG: true
    }
  }
}