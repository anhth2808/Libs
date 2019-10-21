const path = require('path')
const pkg = require('../../package')
const BASE = process.env.PWD || process.cwd()
module.exports = {
  root: {
    base: BASE,
    src: 'src',
    dest: 'public',
    deploy: 'deploy'
  },
  html: {
    src: 'html',
    pattern: '*.html',
    dest: './',
    data: 'data'
  },
  fonts: {
    src: 'assets/fonts',
    pattern: '**/*',
    dest: 'assets/fonts'
  },
  images: {
    src: 'assets/images',
    pattern: '**/*',
    dest: 'assets/images'
  },
  styles: {
    src: 'assets/stylesheets',
    pattern: '**/*.scss',
    exclude: '**/_*.scss',
    dest: 'assets/stylesheets',
    output: 'app.css'
  },
  scripts: {
    src: 'assets/javascripts',
    entries: [
      { 'app-desktop': 'app-desktop.js' },
      { 'app-mobile': 'app-mobile.js' }
      // Add more entry if you need: { 'output-name': 'input-name.js' }
    ],
    pattern: '**/*.js',
    dest: 'assets/javascripts',
    output: '[name].js'
  },
  assets: {
    src: 'assets/static',
    pattern: '**/*.*',
    dest: './assets/'
  },
  favicon: {
    src: 'assets/favicon',
    pattern: '**/*.*',
    dest: './'
  },
  worker: {
    src: 'worker',
    pattern: '**/*.*',
    dest: './assets/'
  },
  install: {
    styles: {
      dest: 'modules'
    },
    scripts: {
      dest: 'modules'
    },
    images: {
      dest: 'images'
    }
  }
}
