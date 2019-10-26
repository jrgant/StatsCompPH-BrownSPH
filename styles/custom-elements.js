// Define some custom elements for development
var DevNoteProto = Object.create(HTMLDivElement.prototype);

var DevNote = document.registerElement('dev-note', {
  prototype: DevNoteProto,
  extends: 'div'
});
