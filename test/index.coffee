{render,doctype,html.head,meta,title,link,body,script} = require 'teacup'
pkg = require '../package.json'

module.exports = render ->
  doctype()
  html ->
    head ->
      meta charset:'utf-8'
      meta 'http-equiv':'Content-Type', content:'text/html; charset=UTF-8'
      title 'Test'
      link rel:'stylesheet', type:'text/css', href:'../dist/component.css'
      link rel:'stylesheet', type:'text/css', href:'index.css'
  body ->
  script type:'text/javascript', src:"../dist/#{pkg.name}.min.js"
