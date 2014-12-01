require.register("<%= filePath %>", function(exports, require, module){
  <%= contents %>
  <% if (moduleExports) { %>
  module.exports = <%= moduleExports %>;
  <% } %>
});
<% if (autoRequire) { %>
setTimeout(function() {
  require("<%= filePath %>");
}, 1);
<% } %>
