import{i as t}from"./is-whitespace-1csfIJn2.js";import{e as c}from"./extend-shallow-heY_3iO8.js";import{k as l}from"./kind-of-CAAF0pfw.js";/*!
 * condense-newlines <https://github.com/jonschlinkert/condense-newlines>
 *
 * Copyright (c) 2014 Jon Schlinkert, contributors.
 * Licensed under the MIT License
 */var o=t,u=c,m=l,w=function(e,a){var n=u({},a),p=n.sep||`

`,r=n.min,i;return typeof r=="number"&&r!==2&&(i=new RegExp("(\\r\\n|\\n|\\u2424) {"+r+",}")),typeof i>"u"&&(i=n.regex||/(\r\n|\n|\u2424){2,}/g),n.keepWhitespace!==!0&&(e=e.split(`
`).map(function(f){return o(f)?f.trim():f}).join(`
`)),e=s(e,n),e.replace(i,p)};function s(e,a){var n=a.trailingNewline;if(n===!1)return e;switch(m(n)){case"string":e=e.replace(/\s+$/,a.trailingNewline);break;case"function":e=a.trailingNewline(e);break;case"undefined":case"boolean":default:{e=e.replace(/\s+$/,`
`);break}}return e}export{w as c};
