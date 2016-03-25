var webpack = require('webpack')

module.exports = {
  entry: './src/index.js',
  output: {
    filename: 'lib/index.js',
    library: 'canvas-tools',
    libraryTarget: 'umd'
  },
  module: {
    loaders: [
      { test: /\.coffee$/, loader: 'coffee-loader' },
      {
        test: /\.js$/,
        loader: 'babel-loader',
        query: {
          presets: ['es2015']
        }
      }
    ]
  },
  resolve: {
    extensions: ['', '.js', '.json', '.coffee']
  },
};
