module.exports = {
  content: [
    './app/views/**/*.haml',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/components/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      colors: {
        'primary': 'rgba(63,114,175,0.2)',
        'secondary': '#123D4E',
        'primary-original': '#3F72AB',
      },
    },
  },
  plugins: [],
} 