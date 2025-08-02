import{g as o}from"./@babel-DR_DpGdq.js";import{j as s}from"./js-beautify-CVGnPpPe.js";import{c as a}from"./condense-newlines-72lYqSqC.js";import{e as p}from"./extend-shallow-heY_3iO8.js";/*!
 * pretty <https://github.com/jonschlinkert/pretty>
 *
 * Copyright (c) 2013-2015, 2017, Jon Schlinkert.
 * Released under the MIT License.
 */var i=s,c=a,l=p,m={unformatted:["code","pre","em","strong","span"],indent_inner_html:!0,indent_char:" ",indent_size:2,sep:`
`},d=function(e,t){var r=l({},m,t);return e=i.html(e,r),r.ocd===!0?(r.newlines&&(r.sep=r.newlines),f(e,r)):e};function f(n,e){return c(n,e).replace(/^\s+/g,"").replace(/\s+$/g,`
`).replace(/(\s*<!--)/g,`
$1`).replace(/>(\s*)(?=<!--\s*\/)/g,"> ")}const h=o(d);export{h as p};
