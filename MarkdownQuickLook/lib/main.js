
function load() {

  // Text is injected here: make sure you escape
  // backtick characters.

  const text=`%@`

  const options = {
    gfm: true,
    langPrefix: 'language-',
    tables: true,
    breaks: false,
    sanitize: false,
    smartLists: true,
    smartyPants: true,
    xhtml: false,
    highlight: function(code) {
      return hljs.highlightAuto(code).value;
    }
  }

  const render = marked
  render.setOptions(options)

  document.body.innerHTML = render(text);
}
